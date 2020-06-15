package org.seckill.dao;

import org.seckill.entity.SuccessKilled;

public interface SuccessKilledDao {

    /**
     * insert purchase detail, can filter repetition
     * @param seckillId
     * @param userphone
     * @return 插入的行数
     */
    int insertSuccessKilled(long seckillId, long userphone);

    /**
     * according id query Successkilled object and return seckill object entity
     * @param seckillId
     * @return
     */
    SuccessKilled queryByIdWithSeckill(long seckillId);

}
