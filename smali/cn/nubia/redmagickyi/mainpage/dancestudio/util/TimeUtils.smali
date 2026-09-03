.class public Lcn/nubia/redmagickyi/mainpage/dancestudio/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field private static final DEFAULT_DATA_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field private static mFormatBuilder:Ljava/lang/StringBuilder;

.field private static mFormatter:Ljava/util/Formatter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/TimeUtils;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 11
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/TimeUtils;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/TimeUtils;->mFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static stampToTime(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    if-nez p2, :cond_0

    const-string/jumbo p2, "yyyy-MM-dd HH:mm:ss"

    :cond_0
    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 35
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringForTime(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x3e8

    .line 15
    div-long/2addr p0, v0

    const-wide/16 v0, 0x3c

    .line 17
    rem-long v2, p0, v0

    .line 18
    div-long v4, p0, v0

    rem-long/2addr v4, v0

    const-wide/16 v0, 0xe10

    .line 19
    div-long/2addr p0, v0

    .line 21
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/TimeUtils;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 23
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/TimeUtils;->mFormatter:Ljava/util/Formatter;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p0, p1, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%d:%02d:%02d"

    invoke-virtual {v0, p1, p0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 25
    :cond_0
    sget-object p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/TimeUtils;->mFormatter:Ljava/util/Formatter;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%02d:%02d"

    invoke-virtual {p0, v0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static timeToStamp(Ljava/lang/String;Ljava/lang/String;)J
    .locals 1

    .line 43
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    if-nez p1, :cond_0

    const-string/jumbo p1, "yyyy-MM-dd HH:mm:ss"

    :cond_0
    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 p0, 0x0

    return-wide p0
.end method
