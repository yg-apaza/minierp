SET GLOBAL event_scheduler=ON;
CREATE EVENT evaluacionAutomaticaPreventas
    ON SCHEDULE EVERY 1 DAY STARTS '2016-10-019 23:59:00'
    DO call evaluacion_preventa();