select utc_timestamp                                    as 'current_timestamp',
       date_format(now(), '%W :: %M :: %Y :: %H:%i:%s') as 'biezaca data i godzina';