.class public Lcn/nubia/redmagickyi/livecalender/util/calendar/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final TIMEZONE:Ljava/lang/String; = "Asia/Shanghai"

.field private static final zoneId:Ljava/time/ZoneId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-string v0, "Asia/Shanghai"

    invoke-static {v0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/livecalender/util/calendar/TimeUtils;->zoneId:Ljava/time/ZoneId;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDate(Ljava/time/LocalDate;)Ljava/util/Date;
    .locals 1

    .line 26
    sget-object v0, Lcn/nubia/redmagickyi/livecalender/util/calendar/TimeUtils;->zoneId:Ljava/time/ZoneId;

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    .line 27
    invoke-static {p0}, Ljava/util/Date;->from(Ljava/time/Instant;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalDate(J)Ljava/time/LocalDate;
    .locals 0

    .line 18
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    sget-object p1, Lcn/nubia/redmagickyi/livecalender/util/calendar/TimeUtils;->zoneId:Ljava/time/ZoneId;

    invoke-virtual {p0, p1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalDate(Ljava/util/Date;)Ljava/time/LocalDate;
    .locals 2

    .line 22
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/livecalender/util/calendar/TimeUtils;->getLocalDate(J)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static getMondayOfWeek(Ljava/util/Date;)Ljava/util/Date;
    .locals 1

    .line 40
    invoke-static {p0}, Lcn/nubia/redmagickyi/livecalender/util/calendar/TimeUtils;->getLocalDate(Ljava/util/Date;)Ljava/time/LocalDate;

    move-result-object p0

    sget-object v0, Ljava/time/DayOfWeek;->MONDAY:Ljava/time/DayOfWeek;

    invoke-static {v0}, Ljava/time/temporal/TemporalAdjusters;->previousOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object p0

    sget-object v0, Lcn/nubia/redmagickyi/livecalender/util/calendar/TimeUtils;->zoneId:Ljava/time/ZoneId;

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Date;->from(Ljava/time/Instant;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getSundayOfWeek(Ljava/util/Date;)Ljava/util/Date;
    .locals 1

    .line 49
    invoke-static {p0}, Lcn/nubia/redmagickyi/livecalender/util/calendar/TimeUtils;->getLocalDate(Ljava/util/Date;)Ljava/time/LocalDate;

    move-result-object p0

    sget-object v0, Ljava/time/DayOfWeek;->SUNDAY:Ljava/time/DayOfWeek;

    invoke-static {v0}, Ljava/time/temporal/TemporalAdjusters;->nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object p0

    sget-object v0, Lcn/nubia/redmagickyi/livecalender/util/calendar/TimeUtils;->zoneId:Ljava/time/ZoneId;

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Date;->from(Ljava/time/Instant;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getTimestamp(Ljava/util/Date;Ljava/lang/String;)J
    .locals 2

    .line 59
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/livecalender/util/calendar/TimeUtils;->getLocalDate(J)Ljava/time/LocalDate;

    move-result-object p0

    .line 60
    invoke-static {p1}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 61
    sget-object p1, Lcn/nubia/redmagickyi/livecalender/util/calendar/TimeUtils;->zoneId:Ljava/time/ZoneId;

    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p0

    return-wide p0
.end method

.method public static now()Ljava/time/LocalDate;
    .locals 1

    .line 31
    sget-object v0, Lcn/nubia/redmagickyi/livecalender/util/calendar/TimeUtils;->zoneId:Ljava/time/ZoneId;

    invoke-static {v0}, Ljava/time/LocalDate;->now(Ljava/time/ZoneId;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method
