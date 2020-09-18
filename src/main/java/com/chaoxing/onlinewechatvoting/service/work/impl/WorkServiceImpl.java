package com.chaoxing.onlinewechatvoting.service.work.impl;
import	java.io.IOException;

import com.chaoxing.onlinewechatvoting.bean.po.Activity;
import com.chaoxing.onlinewechatvoting.bean.po.Work;
import com.chaoxing.onlinewechatvoting.bean.po.WorkLog;
import com.chaoxing.onlinewechatvoting.bean.vo.WorkVO;
import com.chaoxing.onlinewechatvoting.common.ResponseString;
import com.chaoxing.onlinewechatvoting.common.ServerResponse;
import com.chaoxing.onlinewechatvoting.dao.ActivityMapper;
import com.chaoxing.onlinewechatvoting.dao.WorkLogMapper;
import com.chaoxing.onlinewechatvoting.dao.WorkMapper;
import com.chaoxing.onlinewechatvoting.service.work.IworkService;
import com.chaoxing.onlinewechatvoting.utils.VideoUtil;
import lombok.extern.slf4j.Slf4j;
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

    @Override
    public ServerResponse<String> add(Work work) {
//        work.setCreateTime(LocalDateTime.now());
        work.setStatus(ResponseString.UN_DELETE);
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
    public ServerResponse<List<Work>> list(Integer activityId, Integer selectType1, Integer selectType2) {
        List<Work> list = workMapper.list(activityId,selectType1,selectType2);
        if(list != null&&list.size()>0){
            for(int i=0;i<list.size();i++){
                Work work = list.get(i);
                List<WorkLog> logList = workLogMapper.selectByWorkId(work.getId());
                if(logList!=null){
                    work.setVotes(logList.size());
                }
            }
            return ServerResponse.createBySuccess(list);
        }
        return ServerResponse.createByErrorMessage(ResponseString.DATA_IS_EMPTY);
    }

    @Override
    public ServerResponse<String> status(Integer id) {
        Work work = workMapper.selectByPrimaryKey(id);
        if(work== null){
            return ServerResponse.createByErrorMessage(ResponseString.PARAMS_IS_EMPTY);
        }
        if(1==work.getStatus()){
            work.setStatus(ResponseString.UN_DELETE);
        }else {
            work.setStatus(ResponseString.IS_DELETE);
        }
        workMapper.updateByPrimaryKeySelective(work);
        return ServerResponse.createBySuccessMessage(ResponseString.UPDATE_SUCCESS);
    }

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
}
