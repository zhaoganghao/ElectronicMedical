package cn.emedical.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.emedical.bean.Appointment;
import cn.emedical.service.AppointmentService;
import cn.emedical.service.base.DaoSupport;
@Service
@Transactional
public class AppointmentServiceImpl extends DaoSupport<Appointment> implements AppointmentService {

}
