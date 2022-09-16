package com.dev.webApp.mapper;

import com.dev.webApp.domain.dto.SelectNoticeDTO;
import com.dev.webApp.domain.dto.SelectNoticePaginationDTO;
import com.dev.webApp.domain.vo.NoticeVO;

import java.util.List;

public interface NoticeMapper {

    List<NoticeVO> selectNoticeList(SelectNoticeDTO selectNoticeDTO);

    List<NoticeVO> selectNoticePaginationList(SelectNoticePaginationDTO noticePaginationDTO);

    NoticeVO selectNotice(Long noticeNo);

    int insertNotice(NoticeVO noticeVO);

    int insertNoticeList(List<NoticeVO> noticeVOList);

    int updateNotice(NoticeVO noticeNo);

    int updateNoticeState(NoticeVO noticeVO);

    int deleteNotice(Long noticeNo);

    int getTotalCnt();
}
