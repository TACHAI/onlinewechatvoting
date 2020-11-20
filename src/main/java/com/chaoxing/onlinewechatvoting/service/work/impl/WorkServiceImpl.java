package com.chaoxing.onlinewechatvoting.service.work.impl;
import java.io.File;
import	java.io.IOException;

import com.chaoxing.onlinewechatvoting.bean.po.Activity;
import com.chaoxing.onlinewechatvoting.bean.po.Work;
import com.chaoxing.onlinewechatvoting.bean.po.WorkLog;
import com.chaoxing.onlinewechatvoting.bean.po.WorkUser;
import com.chaoxing.onlinewechatvoting.bean.vo.BackWorkVO;
import com.chaoxing.onlinewechatvoting.bean.vo.WorkVO;
import com.chaoxing.onlinewechatvoting.common.ResponseString;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;
import com.chaoxing.onlinewechatvoting.dao.ActivityMapper;
import com.chaoxing.onlinewechatvoting.dao.WorkLogMapper;
import com.chaoxing.onlinewechatvoting.dao.WorkMapper;
import com.chaoxing.onlinewechatvoting.dao.WorkUserMapper;
import com.chaoxing.onlinewechatvoting.service.work.IworkService;
import com.chaoxing.onlinewechatvoting.utils.DateUtil;
import com.chaoxing.onlinewechatvoting.utils.PoiUtils;
import com.chaoxing.onlinewechatvoting.utils.VideoUtil;
import lombok.extern.slf4j.Slf4j;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @ClassName WorkServiceImpl
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2020-09-15 13:58
 */
@Slf4j
@Service(value = "iworkService")
public class WorkServiceImpl implements IworkService {

    @Autowired
    private WorkMapper workMapper;
    @Autowired
    private WorkLogMapper workLogMapper;
    @Autowired
    private ActivityMapper activityMapper;
    @Autowired
    private WorkUserMapper workUserMapper;

    @Override
    public ServerResponse<String> add(Work work) {
        work.setStatus(ResponseString.IS_DELETE);
        work.setCreateTime(new Date());
        int res = workMapper.insert(work);
        if(res>0){
            return ServerResponse.createBySuccessMessage(ResponseString.ADD_SUCCESS);
        }
        return ServerResponse.createByErrorMessage(ResponseString.ADD_FAIL);
    }

    @Override
    public ServerResponse<String> foreAdd(Work work)  {
        work.setStatus(ResponseString.IS_DELETE);
        work.setCreateTime(new Date());
        // 截取视频的前几帧
        if(work.getImage()==null){
            try {
                work.setImage(VideoUtil.getImage(work.getVideo()));
            }catch (IOException e) {
                log.error("VideoUtil.getImage：{}",e.getMessage());
            }
        }
        int res = workMapper.insert(work);
        if(res>0){
            return ServerResponse.createBySuccessMessage(ResponseString.ADD_SUCCESS);
        }
        return ServerResponse.createByErrorMessage(ResponseString.ADD_FAIL);
    }

    @Override
    public ServerResponse<String> deleteById(Integer id) {
        int res = workMapper.deleteByPrimaryKey(id);
        if(res>0){
            return ServerResponse.createBySuccessMessage(ResponseString.DELETE_SUCCESS);
        }
        return ServerResponse.createByErrorMessage(ResponseString.DELETE_FAIL);
    }

    @Override
    public ServerResponse<String> update(Work work) {
        int res = workMapper.updateByPrimaryKeySelective(work);
        if(res>0){
            return ServerResponse.createBySuccessMessage(ResponseString.UPDATE_SUCCESS);
        }
        return ServerResponse.createByErrorMessage(ResponseString.UPDATE_FAIL);
    }

    @Override
    public ServerResponse<Work> selectById(Integer id) {
        Work work = workMapper.selectByPrimaryKey(id);
        if(work!=null){
            List<WorkLog> logList = workLogMapper.selectByWorkId(work.getId());
            if(logList!=null){
                work.setVotes(logList.size());
            }
            return ServerResponse.createBySuccess(work);
        }
        return ServerResponse.createByErrorMessage(ResponseString.DATA_IS_EMPTY);
    }

    @Override
    public ServerResponse<List<Work>> listFore(Integer activityId, Integer selectType1, Integer selectType2) {
        List<Work> list = workMapper.listFore(activityId,selectType1,selectType2);
        if(list != null&&list.size()>0){
            for(int i=0;i<list.size();i++){
                Work work = list.get(i);
                work.setActivityType(activityMapper.selectByPrimaryKey(work.getActivityId()).getType());
                List<WorkLog> logList = workLogMapper.selectByWorkId(work.getId());
                if(logList!=null){
                    work.setVotes(logList.size());
                }
            }
            return ServerResponse.createBySuccess(list);
        }
        return ServerResponse.createByErrorMessage(ResponseString.DATA_IS_EMPTY);    }

    @Override
    public ServerResponse<List<BackWorkVO>> list(Integer activityId, Integer selectType1, Integer selectType2) {
        List<Work> list = workMapper.list(activityId,selectType1,selectType2);
        List<BackWorkVO> backWorkVOS = new ArrayList<> ();
        if(list != null&&list.size()>0){
            for(int i=0;i<list.size();i++){
                Work work = list.get(i);
                List<WorkLog> logList = workLogMapper.selectByWorkId(work.getId());
                if(logList!=null){
                    work.setVotes(logList.size());
                }
                BackWorkVO backWorkVO = new BackWorkVO();
                BeanUtils.copyProperties(work,backWorkVO);
                WorkUser workUser = workUserMapper.selectByPrimaryKey(work.getWorkUserId());
                if(null != workUser&&null != workUser.getPhone()){
                    backWorkVO.setPhone(workUser.getPhone());
                }
                backWorkVOS.add(backWorkVO);
            }
            return ServerResponse.createBySuccess(backWorkVOS);
        }
        return ServerResponse.createByErrorMessage(ResponseString.DATA_IS_EMPTY);
    }

    @Override
    public ServerResponse<String> status(Integer id,Integer status) {
        Work work = workMapper.selectByPrimaryKey(id);
        if(work== null){
            return ServerResponse.createByErrorMessage(ResponseString.PARAMS_IS_EMPTY);
        }
        if(1==status){
            work.setStatus(ResponseString.IS_DELETE);
        }else if(2==status) {
            work.setStatus(ResponseString.UN_REVIEWED);
        }else if(0==status) {
            work.setStatus(ResponseString.UN_DELETE);
        }
        workMapper.updateByPrimaryKeySelective(work);
        return ServerResponse.createBySuccessMessage(ResponseString.UPDATE_SUCCESS);
    }

    @Override
    public ServerResponse<String> review(Integer id, Integer status) {
        Work work = workMapper.selectByPrimaryKey(id);
        if(work== null){
            return ServerResponse.createByErrorMessage(ResponseString.PARAMS_IS_EMPTY);
        }
        work.setStatus(status);

        workMapper.updateByPrimaryKeySelective(work);
        return ServerResponse.createBySuccessMessage(ResponseString.UPDATE_SUCCESS);    }

    @Override
    public List<WorkVO> listByActivityId(Integer activityId) {
        List<Work> list = workMapper.listFore(activityId,null,null);
        List<WorkVO> listVO = new ArrayList<>();
        for(int i=0;i<list.size();i++){
            Work work = list.get(i);
            WorkVO vo = new WorkVO();
            BeanUtils.copyProperties(work,vo);
            Activity activity = activityMapper.selectByPrimaryKey(work.getActivityId());
            vo.setActivityType(activity.getType());
            List<WorkLog> logList = workLogMapper.selectByWorkId(work.getId());
            if(logList!=null){
                vo.setVotes(logList.size());
            }
            listVO.add(vo);
        }
        return listVO;
    }

    @Override
    public File createExcelFile(Integer activityId, Integer selectType1, Integer selectType2) {
        List<Work> list = workMapper.list(activityId,selectType1,selectType2);
        List<BackWorkVO> backWorkVOS = new ArrayList<> ();
        if(list != null&&list.size()>0){
            for(int i=0;i<list.size();i++){
                Work work = list.get(i);
                List<WorkLog> logList = workLogMapper.selectByWorkId(work.getId());
                if(logList!=null){
                    work.setVotes(logList.size());
                }
                BackWorkVO backWorkVO = new BackWorkVO();
                BeanUtils.copyProperties(work,backWorkVO);
                WorkUser workUser = workUserMapper.selectByPrimaryKey(work.getWorkUserId());
                if(null != workUser&&null != workUser.getPhone()){
                    backWorkVO.setPhone(workUser.getPhone());
                }
                backWorkVOS.add(backWorkVO);
            } }
        String activityName = activityMapper.selectByPrimaryKey(activityId).getName();
        System.out.println(activityName);
        return createExcelFile(backWorkVOS,activityName);
    }

    public static File createExcelFile(List<?> list,String activityName){
        if(list == null){
            list = new ArrayList<> ();
        }
        Workbook workbook = new XSSFWorkbook();
        //创建一个sheet,括号里面可以输入sheet名称，默认为sheet0
        Sheet sheet = workbook.createSheet();
        Row row0 = sheet.createRow(0);
        int columnIndex = 0;
        row0.createCell(columnIndex).setCellValue("No");
        row0.createCell(++columnIndex).setCellValue("作品名称");
        row0.createCell(++columnIndex).setCellValue("用户名");
        row0.createCell(++columnIndex).setCellValue("手机号");
        row0.createCell(++columnIndex).setCellValue("票数");
        row0.createCell(++columnIndex).setCellValue("类型");
        row0.createCell(++columnIndex).setCellValue("年龄组别");
        row0.createCell(++columnIndex).setCellValue("装态");
        row0.createCell(++columnIndex).setCellValue("表演者名单");
        row0.createCell(++columnIndex).setCellValue("作品上传时间");
        for(int i=0;i<list.size();i++){
            BackWorkVO work = (BackWorkVO) list.get(i);
            Row row = sheet.createRow(i+1);
            for(int j=0;j<columnIndex+1;j++){
                row.createCell(j);
            }
            columnIndex=0;
            row.getCell(columnIndex).setCellValue(i+1);
            row.getCell(++columnIndex).setCellValue(work.getName());
            row.getCell(++columnIndex).setCellValue(work.getAuthor());
            row.getCell(++columnIndex).setCellValue(work.getPhone());
            row.getCell(++columnIndex).setCellValue(work.getVotes());
            // 设置类型
            if(work.getSelectType1()==5){
                row.getCell(++columnIndex).setCellValue("朗诵");
            }else if(work.getSelectType1()==6){
                row.getCell(++columnIndex).setCellValue("器乐");
            }
            else if(work.getSelectType1()==7){
                row.getCell(++columnIndex).setCellValue("声乐");
            }
            else if(work.getSelectType1()==8){
                row.getCell(++columnIndex).setCellValue("群舞（3人以上）");
            }
            else if(work.getSelectType1()==9){
                row.getCell(++columnIndex).setCellValue("单、双、三舞（1-3人）");
            }

            //设置年龄组别
            if(work.getSelectType2()==10){
                row.getCell(++columnIndex).setCellValue("幼儿");
            }else if(work.getSelectType2()==11){
                row.getCell(++columnIndex).setCellValue("儿童");
            }else if(work.getSelectType2()==12){
                row.getCell(++columnIndex).setCellValue("少年");
            }

            if(work.getStatus()==1){
                row.getCell(++columnIndex).setCellValue("下架");
            }else {
                row.getCell(++columnIndex).setCellValue("上架");

            }
            row.getCell(++columnIndex).setCellValue(work.getMessage());
            row.getCell(++columnIndex).setCellValue(DateUtil.dateToStr(work.getCreateTime(),DateUtil.DEFAULT_FORMAT));

        }

        return PoiUtils.createExcelFile(workbook,activityName);
    }

}
