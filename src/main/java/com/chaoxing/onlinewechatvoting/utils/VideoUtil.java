package com.chaoxing.onlinewechatvoting.utils;

import lombok.extern.slf4j.Slf4j;
import org.bytedeco.javacv.FFmpegFrameGrabber;
import org.bytedeco.javacv.Frame;
import org.bytedeco.javacv.FrameGrabber;
import org.bytedeco.javacv.Java2DFrameConverter;
import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

/**
 * 视频截取图片做为封面
 * @ClassName VideoUtil
 * @Author https://github.com/TACHAI
 * @Email tc1206966083@gmail.com
 * @Date 2019-07-24
 */
@Slf4j
@Component
public class VideoUtil {
    private static String localDir;

    @Value("${file.localDir}")
    public void setLocalDir(String localDir){
        VideoUtil.localDir=localDir;
    }

    /**
     * @param moviePath  视频文件地址
     * @return
     * @throws FrameGrabber.Exception
     * @throws IOException
     */
    public static String getImage(String moviePath) throws FrameGrabber.Exception, IOException {
        String imagePath = moviePath.split("\\.")[0]+ DateTime.now().toString() +".jpg";
        File targetFile = new File(localDir+imagePath.replace("/static",""));
        log.info("VideoUtil.getImage:targetFile:{}",targetFile);
        File fileParent = targetFile.getParentFile();

        if(!fileParent.exists()){
            fileParent.mkdir();
        }


        FFmpegFrameGrabber ff = new FFmpegFrameGrabber(localDir+moviePath.replace("/static",""));
        try {
            ff.start();
        } catch (FrameGrabber.Exception e) {
            e.printStackTrace();
        }
        int lenght = ff.getLengthInFrames();
        int i=0;
        Frame f = null;
        while (i<lenght){
            f = ff.grabFrame();
            if ((i > 30) && (f.image != null)) {
                break;
            }
            i++;
        }
        int owidth = f.imageWidth;
        int oheight = f.imageHeight;
        // 对截取的帧进行等比例缩放
        int width = owidth;
        int height=	oheight;
        //int height = (int) (((double) width / owidth) * oheight);
        Java2DFrameConverter converter = new Java2DFrameConverter();
        BufferedImage fecthedImage = converter.getBufferedImage(f);
        BufferedImage bi = new BufferedImage(width, height, BufferedImage.TYPE_3BYTE_BGR);
        bi.getGraphics().drawImage(fecthedImage.getScaledInstance(width, height, Image.SCALE_SMOOTH),
                0, 0, null);
        ImageIO.write(bi, "jpg", targetFile);
        ff.stop();
        return imagePath;
    }


    public static void main(String[] args) {
        String moviePath = "/static/uploadFile/video/57I888piC6iQ202009181223028.mp4";
        String image = null;
        try {
            image = getImage(moviePath);
        } catch (IOException e) {
            System.out.println(e.getMessage());
        }
        System.out.println(image);
    }

}
