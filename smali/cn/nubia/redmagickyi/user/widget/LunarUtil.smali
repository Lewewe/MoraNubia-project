.class public Lcn/nubia/redmagickyi/user/widget/LunarUtil;
.super Ljava/lang/Object;
.source "LunarUtil.java"


# static fields
.field public static final ADD_20_IF_LEAPMONTH:I = 0x14

.field public static DAY:Ljava/lang/String; = null

.field public static DEFAULT_END_YEAR:I = 0x0

.field public static DEFAULT_START_YEAR:I = 0x0

.field public static EIGHT:Ljava/lang/String; = null

.field public static FIVE:Ljava/lang/String; = null

.field public static FOUR:Ljava/lang/String; = null

.field public static final IS_DAY:I = 0x2

.field public static final IS_MONTH:I = 0x1

.field public static final IS_YEAR:I = 0x0

.field public static LEAP:Ljava/lang/String; = null

.field public static LUNAR_ELEVENTH_MONTH:Ljava/lang/String; = null

.field public static LUNAR_FIRST_DAY:Ljava/lang/String; = null

.field public static LUNAR_FIRST_MONTH:Ljava/lang/String; = null

.field private static final LUNAR_INFO:[I

.field public static LUNAR_TWELVETH_MONTH:Ljava/lang/String; = null

.field public static LUNAR_TWENTHIETH_DAY:Ljava/lang/String; = null

.field private static final MAX_YEAR:I = 0x802

.field private static final MIN_YEAR:I = 0x76c

.field public static MONTH:Ljava/lang/String; = null

.field public static final MONTHS_LONG:[Ljava/lang/String;

.field public static final MONTHS_SHORT:[Ljava/lang/String;

.field public static NINE:Ljava/lang/String; = null

.field public static ONE:Ljava/lang/String; = null

.field public static SEVEN:Ljava/lang/String; = null

.field public static SIX:Ljava/lang/String; = null

.field private static final START_DATE:Ljava/lang/String; = "19000130"

.field public static TEN:Ljava/lang/String;

.field public static THREE:Ljava/lang/String;

.field public static TWO:Ljava/lang/String;

.field public static final WEEKDAYS_LONG:[Ljava/lang/String;

.field public static final WEEKDAYS_SHORT:[Ljava/lang/String;

.field public static YEAR:Ljava/lang/String;

.field public static ZERO:Ljava/lang/String;

.field public static am:Ljava/lang/String;

.field public static arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static isLeapYear:Z

.field static months:[I

.field public static pm:Ljava/lang/String;

.field static sum:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x96

    .line 14
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->LUNAR_INFO:[I

    const/16 v0, 0xc

    .line 32
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->MONTHS_LONG:[Ljava/lang/String;

    .line 33
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->MONTHS_SHORT:[Ljava/lang/String;

    const/4 v1, 0x7

    .line 34
    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->WEEKDAYS_LONG:[Ljava/lang/String;

    const/4 v1, 0x7

    .line 35
    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->WEEKDAYS_SHORT:[Ljava/lang/String;

    const/16 v1, 0x7b2

    .line 40
    sput v1, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->DEFAULT_START_YEAR:I

    const/16 v1, 0x7f5

    .line 41
    sput v1, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->DEFAULT_END_YEAR:I

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->arrayList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 484
    sput v1, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->sum:I

    .line 485
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->months:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6e95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5d0
        0x14573
        0x52d0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb5a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x55c0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4bd7
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
    .end array-data

    :array_1
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkLunarDate(IIIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x76c

    if-lt p0, v0, :cond_4

    const/16 v0, 0x802

    if-gt p0, v0, :cond_4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    const/16 v1, 0xc

    if-gt p1, v1, :cond_3

    if-lt p2, v0, :cond_2

    const/16 v1, 0x1e

    if-gt p2, v1, :cond_2

    .line 137
    invoke-static {p0}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getLeapMonth(I)I

    move-result p0

    if-ne p3, v0, :cond_1

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "leap month error"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    .line 134
    :cond_2
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "lunar day error"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 131
    :cond_3
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "lunar month error"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 128
    :cond_4
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "lunar year error"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static clearSum()V
    .locals 1

    const/4 v0, 0x0

    .line 499
    sput v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->sum:I

    return-void
.end method

.method public static computeWeekday(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 463
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x4

    .line 464
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x6

    .line 465
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0x8

    .line 466
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ge v2, v4, :cond_2

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    const/16 v3, 0x63

    :cond_0
    if-ne v2, v5, :cond_1

    const/16 v2, 0xd

    goto :goto_0

    :cond_1
    const/16 v2, 0xe

    .line 475
    :cond_2
    :goto_0
    div-int/lit8 v4, v3, 0x4

    add-int/2addr v4, v3

    div-int/lit8 v3, v0, 0x4

    add-int/2addr v4, v3

    mul-int/2addr v0, v1

    sub-int/2addr v4, v0

    add-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0x1a

    div-int/lit8 v2, v2, 0xa

    add-int/2addr v4, v2

    add-int/2addr v4, p0

    sub-int/2addr v4, v5

    .line 477
    rem-int/lit8 v4, v4, 0x7

    if-gez v4, :cond_3

    add-int/lit8 v4, v4, 0x7

    .line 481
    :cond_3
    sget-object p0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->WEEKDAYS_LONG:[Ljava/lang/String;

    aget-object p0, p0, v4

    return-object p0
.end method

.method private static daysBetween(Ljava/util/Date;Ljava/util/Date;)I
    .locals 2

    .line 118
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/32 p0, 0x5265c00

    div-long/2addr v0, p0

    .line 121
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static daysToLunmmdd(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .line 531
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    .line 532
    :goto_0
    array-length v4, p1

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 533
    aget-object v4, p1, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/2addr v3, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_1
    if-nez v3, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 541
    :cond_2
    invoke-static {p2}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getLeapMonth(I)I

    move-result p0

    move p1, v5

    :goto_2
    const/16 v4, 0xc

    if-gt p1, v4, :cond_6

    if-ge p1, p0, :cond_3

    .line 545
    :try_start_0
    invoke-static {p2, p1}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getMonthDays(II)I

    move-result v4

    sub-int v4, v3, v4

    if-lez v4, :cond_6

    .line 546
    invoke-static {p2, p1}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getMonthDays(II)I

    move-result v4

    :goto_3
    sub-int/2addr v3, v4

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_5

    :cond_3
    if-ne p1, p0, :cond_5

    .line 551
    invoke-static {p2, p1}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getMonthDays(II)I

    move-result v4

    sub-int v4, v3, v4

    if-lez v4, :cond_6

    .line 552
    invoke-static {p2, p1}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getMonthDays(II)I

    move-result v4

    sub-int/2addr v3, v4

    .line 553
    invoke-static {p2}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getLeapMonthDays(I)I

    move-result v4

    sub-int v4, v3, v4

    if-lez v4, :cond_4

    .line 554
    invoke-static {p2}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getLeapMonthDays(I)I

    move-result v4

    goto :goto_3

    :cond_4
    move v2, v5

    goto :goto_6

    .line 563
    :cond_5
    invoke-static {p2, p1}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getMonthDays(II)I

    move-result v4

    sub-int v4, v3, v4

    if-lez v4, :cond_6

    .line 564
    invoke-static {p2, p1}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getMonthDays(II)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 571
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 573
    :cond_6
    :goto_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "0"

    if-eqz v2, :cond_7

    move-object v0, p2

    goto :goto_7

    :cond_7
    move-object v0, v1

    :goto_7
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    if-ge p1, v0, :cond_8

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :cond_8
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_8
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 574
    new-instance p1, Ljava/lang/StringBuilder;

    if-ge v3, v0, :cond_9

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_9
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_9
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .line 508
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    .line 509
    :goto_0
    array-length v4, p1

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 510
    aget-object v4, p1, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/2addr v3, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_1
    if-nez v3, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 518
    :cond_2
    sget-object p0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->months:[I

    if-ne p2, v5, :cond_3

    const/16 p1, 0x1d

    goto :goto_2

    :cond_3
    const/16 p1, 0x1c

    :goto_2
    aput p1, p0, v5

    .line 519
    :goto_3
    sget-object p0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->months:[I

    aget p0, p0, v2

    sub-int p1, v3, p0

    if-lez p1, :cond_4

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v3, p0

    goto :goto_3

    .line 522
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    add-int/2addr v2, v5

    const-string p1, "0"

    const/16 p2, 0xa

    new-instance v0, Ljava/lang/StringBuilder;

    if-ge v2, p2, :cond_5

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-ge v3, p2, :cond_6

    .line 523
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    goto :goto_5

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    :goto_5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDate(III)Ljava/lang/String;
    .locals 3

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 399
    const-string p0, "0"

    const/16 v1, 0x9

    if-le p1, v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-le p2, v1, :cond_1

    .line 401
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 403
    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLeapMonth(I)I
    .locals 1

    .line 79
    sget-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->LUNAR_INFO:[I

    add-int/lit16 p0, p0, -0x76c

    aget p0, v0, p0

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method private static getLeapMonthDays(I)I
    .locals 1

    .line 83
    invoke-static {p0}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getLeapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    sget-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->LUNAR_INFO:[I

    add-int/lit16 p0, p0, -0x76c

    aget p0, v0, p0

    const/high16 v0, 0xf0000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/16 p0, 0x1d

    return p0

    :cond_0
    const/16 p0, 0x1e

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static getMonthDays(II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_1

    rsub-int/lit8 p1, p1, 0x10

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 100
    sget-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->LUNAR_INFO:[I

    add-int/lit16 p0, p0, -0x76c

    aget p0, v0, p0

    const v0, 0xffff

    and-int/2addr p0, v0

    and-int/2addr p0, p1

    if-nez p0, :cond_0

    const/16 p0, 0x1d

    return p0

    :cond_0
    const/16 p0, 0x1e

    return p0

    .line 97
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "month error"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getTextRes(Landroid/content/Context;)V
    .locals 5

    .line 637
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->nubia_date_year:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->YEAR:Ljava/lang/String;

    .line 639
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->nubia_date_month:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->MONTH:Ljava/lang/String;

    .line 641
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->nubia_date_day:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->DAY:Ljava/lang/String;

    .line 644
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->nubia_leap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->LEAP:Ljava/lang/String;

    .line 646
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->nubia_lunar_first_day:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->LUNAR_FIRST_DAY:Ljava/lang/String;

    .line 648
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->nubia_lunar_twentieth_day:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->LUNAR_TWENTHIETH_DAY:Ljava/lang/String;

    .line 650
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->nubia_lunar_first_month:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->LUNAR_FIRST_MONTH:Ljava/lang/String;

    .line 652
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->nubia_lunar_eleventh_month:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->LUNAR_ELEVENTH_MONTH:Ljava/lang/String;

    .line 654
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->nubia_lunar_twelveth_month:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->LUNAR_TWELVETH_MONTH:Ljava/lang/String;

    .line 657
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->nubia_zero:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->ZERO:Ljava/lang/String;

    .line 659
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->nubia_one:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->ONE:Ljava/lang/String;

    .line 661
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->nubia_two:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->TWO:Ljava/lang/String;

    .line 663
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->nubia_three:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->THREE:Ljava/lang/String;

    .line 665
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->nubia_four:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->FOUR:Ljava/lang/String;

    .line 667
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->nubia_five:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->FIVE:Ljava/lang/String;

    .line 669
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->nubia_six:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->SIX:Ljava/lang/String;

    .line 671
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->nubia_seven:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->SEVEN:Ljava/lang/String;

    .line 673
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->nubia_eight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->EIGHT:Ljava/lang/String;

    .line 675
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->nubia_nine:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->NINE:Ljava/lang/String;

    .line 677
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->nubia_ten:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->TEN:Ljava/lang/String;

    .line 680
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->nubia_time_am:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->am:Ljava/lang/String;

    .line 682
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->nubia_time_pm:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->pm:Ljava/lang/String;

    .line 685
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$array;->nubia_weeks_full:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 686
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 687
    sget-object v3, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->WEEKDAYS_LONG:[Ljava/lang/String;

    aget-object v4, v0, v2

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 689
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcn/nubia/redmagickyi/main/R$array;->nubia_weeks_short:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move v2, v1

    .line 690
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 691
    sget-object v3, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->WEEKDAYS_SHORT:[Ljava/lang/String;

    aget-object v4, v0, v2

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 693
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcn/nubia/redmagickyi/main/R$array;->nubia_months_full:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move v2, v1

    .line 694
    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 695
    sget-object v3, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->MONTHS_LONG:[Ljava/lang/String;

    aget-object v4, v0, v2

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 697
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$array;->nubia_months_short:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 698
    :goto_3
    array-length v0, p0

    if-ge v1, v0, :cond_3

    .line 699
    sget-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->MONTHS_SHORT:[Ljava/lang/String;

    aget-object v2, p0, v1

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private static getYearDays(I)I
    .locals 4

    const/16 v0, 0x15c

    const v1, 0x8000

    :goto_0
    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 110
    sget-object v2, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->LUNAR_INFO:[I

    add-int/lit16 v3, p0, -0x76c

    aget v2, v2, v3

    const v3, 0xfff0

    and-int/2addr v2, v3

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_1
    invoke-static {p0}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getLeapMonthDays(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static isLeapMonth(II)Z
    .locals 0

    .line 145
    invoke-static {p0}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getLeapMonth(I)I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isLessTen(I)Z
    .locals 1

    const/16 v0, 0xa

    if-le p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static isSolarLeapYear(I)Z
    .locals 1

    .line 388
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_1

    :cond_0
    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static lunarToSolar(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 151
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x6

    .line 152
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v4, 0x8

    .line 153
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 155
    invoke-static {v2, v1, p0, p1}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->checkLunarDate(IIIZ)V

    const/16 v3, 0x76c

    move v4, v0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 159
    invoke-static {v3}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getYearDays(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    :cond_0
    invoke-static {v2}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getLeapMonth(I)I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v1, :cond_1

    move v0, v5

    :cond_1
    and-int/2addr v0, p1

    if-nez v0, :cond_d

    .line 168
    const-string v0, "lunar date error"

    if-eqz v3, :cond_9

    if-ge v1, v3, :cond_2

    goto :goto_3

    :cond_2
    :goto_1
    if-ge v5, v1, :cond_3

    .line 180
    invoke-static {v2, v5}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getMonthDays(II)I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    if-le v1, v3, :cond_5

    .line 184
    invoke-static {v2}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getLeapMonthDays(I)I

    move-result p1

    add-int/2addr v4, p1

    .line 187
    invoke-static {v2, v1}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getMonthDays(II)I

    move-result p1

    if-gt p0, p1, :cond_4

    goto :goto_4

    .line 188
    :cond_4
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    if-ne v1, v3, :cond_b

    if-eqz p1, :cond_7

    .line 193
    invoke-static {v2, v1}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getMonthDays(II)I

    move-result p1

    add-int/2addr v4, p1

    .line 195
    invoke-static {v2}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getLeapMonthDays(I)I

    move-result p1

    if-gt p0, p1, :cond_6

    goto :goto_2

    .line 196
    :cond_6
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 199
    :cond_7
    invoke-static {v2, v1}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getMonthDays(II)I

    move-result p1

    if-gt p0, p1, :cond_8

    :goto_2
    goto :goto_4

    .line 200
    :cond_8
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_3
    if-ge v5, v1, :cond_a

    .line 170
    invoke-static {v2, v5}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getMonthDays(II)I

    move-result p1

    add-int/2addr v4, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 174
    :cond_a
    invoke-static {v2, v1}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getMonthDays(II)I

    move-result p1

    if-gt p0, p1, :cond_c

    :goto_4
    add-int/2addr v4, p0

    .line 207
    :cond_b
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo p1, "yyyyMMdd"

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 209
    const-string p1, "19000130"

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 210
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 211
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x5

    .line 212
    invoke-virtual {v0, p1, v4}, Ljava/util/Calendar;->add(II)V

    .line 213
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 214
    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 175
    :cond_c
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 165
    :cond_d
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "the leapmonth flag error"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static numConvert(II)Ljava/lang/String;
    .locals 11

    const/16 v0, 0xf

    .line 407
    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->ZERO:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->ONE:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->TWO:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/4 v1, 0x3

    sget-object v5, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->THREE:Ljava/lang/String;

    aput-object v5, v0, v1

    const/4 v1, 0x4

    sget-object v5, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->FOUR:Ljava/lang/String;

    aput-object v5, v0, v1

    const/4 v1, 0x5

    sget-object v5, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->FIVE:Ljava/lang/String;

    aput-object v5, v0, v1

    const/4 v1, 0x6

    sget-object v5, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->SIX:Ljava/lang/String;

    aput-object v5, v0, v1

    const/4 v1, 0x7

    sget-object v5, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->SEVEN:Ljava/lang/String;

    aput-object v5, v0, v1

    const/16 v1, 0x8

    sget-object v5, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->EIGHT:Ljava/lang/String;

    aput-object v5, v0, v1

    const/16 v1, 0x9

    sget-object v5, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->NINE:Ljava/lang/String;

    aput-object v5, v0, v1

    sget-object v1, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->TEN:Ljava/lang/String;

    const/16 v5, 0xa

    aput-object v1, v0, v5

    sget-object v1, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->LUNAR_TWENTHIETH_DAY:Ljava/lang/String;

    const/16 v6, 0xb

    aput-object v1, v0, v6

    sget-object v1, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->LUNAR_FIRST_MONTH:Ljava/lang/String;

    const/16 v7, 0xc

    aput-object v1, v0, v7

    sget-object v1, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->LUNAR_ELEVENTH_MONTH:Ljava/lang/String;

    const/16 v8, 0xd

    aput-object v1, v0, v8

    sget-object v1, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->LUNAR_TWELVETH_MONTH:Ljava/lang/String;

    const/16 v9, 0xe

    aput-object v1, v0, v9

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    if-nez p1, :cond_1

    const/16 p1, 0x802

    if-ge p0, p1, :cond_0

    const/16 p1, 0x76c

    if-le p0, p1, :cond_0

    .line 417
    div-int/lit16 p1, p0, 0x3e8

    .line 418
    rem-int/lit16 p0, p0, 0x3e8

    div-int/lit8 v2, p0, 0x64

    .line 419
    rem-int/lit8 p0, p0, 0x64

    div-int/lit8 v3, p0, 0xa

    .line 420
    rem-int/2addr p0, v5

    .line 421
    aget-object p1, v0, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    aget-object p1, v0, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    aget-object p1, v0, v3

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    aget-object p0, v0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v10

    :cond_1
    if-ne p1, v3, :cond_7

    if-lez p0, :cond_6

    if-le p0, v8, :cond_2

    goto :goto_1

    :cond_2
    if-ne p0, v3, :cond_3

    .line 434
    aget-object p0, v0, v7

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-gt p0, v5, :cond_4

    .line 436
    aget-object p0, v0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 438
    :cond_4
    invoke-static {p0, v6}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result p0

    if-eqz p0, :cond_5

    aget-object p0, v0, v8

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 439
    :cond_5
    aget-object p0, v0, v9

    .line 438
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 439
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_6
    :goto_1
    return-object v10

    :cond_7
    if-ne p1, v4, :cond_d

    if-lez p0, :cond_c

    const/16 p1, 0x1f

    if-le p0, p1, :cond_8

    goto :goto_2

    :cond_8
    if-gt p0, v5, :cond_9

    .line 445
    sget-object p1, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->LUNAR_FIRST_DAY:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget-object p0, v0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 447
    :cond_9
    div-int/lit8 p1, p0, 0xa

    .line 448
    rem-int/2addr p0, v5

    .line 449
    invoke-static {p0, v2}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 450
    aget-object p0, v0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    aget-object p1, v0, v5

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 451
    :cond_a
    invoke-static {p1, v3}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 452
    aget-object p1, v0, v5

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget-object p0, v0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 453
    :cond_b
    invoke-static {p1, v4}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 454
    aget-object p1, v0, v6

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget-object p0, v0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    :goto_2
    return-object v10

    .line 458
    :cond_d
    const-string p0, "**"

    return-object p0
.end method

.method public static solarDayTolunarDay(IIZ)[Ljava/lang/String;
    .locals 3

    const/16 v0, 0x1e

    .line 315
    new-array v1, v0, [Ljava/lang/String;

    const/16 v2, 0x1d

    if-nez p2, :cond_0

    .line 318
    :try_start_0
    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getMonthDays(II)I

    move-result p0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result p0

    if-nez p0, :cond_1

    .line 319
    new-array v1, v2, [Ljava/lang/String;

    goto :goto_0

    .line 322
    :cond_0
    invoke-static {p0}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getLeapMonthDays(I)I

    move-result p0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result p0

    if-nez p0, :cond_1

    .line 323
    new-array v1, v2, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 327
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 329
    :goto_1
    array-length p1, v1

    if-ge p0, p1, :cond_2

    add-int/lit8 p1, p0, 0x1

    const/4 p2, 0x2

    .line 330
    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p0

    move p0, p1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public static solarMonthTolunarMonth(I)[Ljava/lang/String;
    .locals 5

    const/16 v0, 0xc

    .line 292
    new-array v0, v0, [Ljava/lang/String;

    .line 294
    invoke-static {p0}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getLeapMonth(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/16 v0, 0xd

    .line 295
    new-array v0, v0, [Ljava/lang/String;

    :cond_0
    const/4 v1, 0x0

    .line 297
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_4

    const/4 v2, 0x1

    if-lez p0, :cond_3

    if-ne p0, v1, :cond_1

    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    :cond_1
    if-le v1, p0, :cond_2

    .line 302
    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v1, 0x1

    .line 304
    invoke-static {v3, v2}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v1, 0x1

    .line 307
    invoke-static {v3, v2}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static solarSumDays(III)I
    .locals 3

    .line 489
    invoke-static {p2}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v0

    .line 490
    sget-object v1, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->months:[I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    :goto_0
    aput v0, v1, v2

    if-ne p0, v2, :cond_1

    .line 492
    sget p0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->sum:I

    add-int/2addr p0, p1

    return p0

    .line 494
    :cond_1
    sget v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->sum:I

    add-int/lit8 v2, p0, -0x1

    add-int/lit8 p0, p0, -0x2

    aget p0, v1, p0

    invoke-static {v2, p0, p2}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->solarSumDays(III)I

    move-result p0

    add-int/2addr v0, p0

    sput v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->sum:I

    add-int/2addr v0, p1

    return v0
.end method

.method public static solarToLunar(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 273
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x6

    .line 274
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x8

    .line 275
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 276
    invoke-static {v0, v1, p0}, Lcn/nubia/redmagickyi/user/widget/SolarToLunar;->calendarSolarToLundar(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static solarYearTolunarYear()[Ljava/lang/String;
    .locals 4

    .line 284
    sget-object v0, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->LUNAR_INFO:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    .line 285
    :goto_0
    sget-object v3, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->LUNAR_INFO:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    add-int/lit16 v3, v2, 0x7b2

    .line 286
    invoke-static {v3, v1}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static timePickerLunMonthDay(I)[Ljava/lang/String;
    .locals 16

    move/from16 v1, p0

    .line 578
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 579
    invoke-static/range {p0 .. p0}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getLeapMonth(I)I

    move-result v3

    if-lez v3, :cond_0

    const/16 v0, 0xd

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    :goto_0
    move v4, v0

    const/4 v5, 0x1

    move v6, v5

    :goto_1
    const/4 v0, 0x0

    if-gt v6, v4, :cond_f

    if-gt v6, v3, :cond_1

    .line 586
    :try_start_0
    invoke-static {v1, v6}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getMonthDays(II)I

    move-result v7

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_b

    :cond_1
    if-lez v3, :cond_2

    add-int/lit8 v7, v3, 0x1

    if-ne v6, v7, :cond_2

    .line 588
    invoke-static/range {p0 .. p0}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getLeapMonthDays(I)I

    move-result v7

    goto :goto_2

    :cond_2
    if-lez v3, :cond_3

    add-int/lit8 v7, v3, 0x1

    if-le v6, v7, :cond_3

    add-int/lit8 v7, v6, -0x1

    .line 590
    invoke-static {v1, v7}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getMonthDays(II)I

    move-result v7

    goto :goto_2

    .line 592
    :cond_3
    invoke-static {v1, v6}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->getMonthDays(II)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/16 v8, 0xa

    .line 595
    const-string v9, "0"

    const-string v10, ""

    if-nez v3, :cond_5

    .line 596
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v6, v8, :cond_4

    move-object v12, v9

    goto :goto_3

    :cond_4
    move-object v12, v10

    :goto_3
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_7

    :cond_5
    if-gt v6, v3, :cond_7

    .line 598
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v6, v8, :cond_6

    move-object v12, v9

    goto :goto_4

    :cond_6
    move-object v12, v10

    :goto_4
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    :cond_7
    if-lez v3, :cond_9

    add-int/lit8 v11, v3, 0x1

    if-ne v6, v11, :cond_9

    .line 600
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v6, -0x1

    if-ge v12, v8, :cond_8

    move-object v13, v9

    goto :goto_5

    :cond_8
    move-object v13, v10

    :goto_5
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    :cond_9
    if-lez v3, :cond_b

    add-int/lit8 v11, v3, 0x1

    if-le v6, v11, :cond_b

    .line 602
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v12, v6, -0x1

    if-ge v12, v8, :cond_a

    move-object v13, v9

    goto :goto_6

    :cond_a
    move-object v13, v10

    :goto_6
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    :cond_b
    move-object v11, v10

    :goto_7
    move v12, v5

    :goto_8
    if-gt v12, v7, :cond_e

    .line 605
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-ge v12, v8, :cond_c

    move-object v14, v9

    goto :goto_9

    :cond_c
    move-object v14, v10

    .line 606
    :goto_9
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 608
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x8

    invoke-static {v14, v15}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result v14

    const/4 v8, 0x4

    if-eqz v14, :cond_d

    .line 609
    invoke-virtual {v13, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const/4 v14, 0x6

    .line 611
    invoke-virtual {v13, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 613
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 615
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v5}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v14, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->MONTH:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v14, 0x2

    .line 616
    invoke-static {v13, v14}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_a

    .line 618
    :cond_d
    invoke-virtual {v13, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const/4 v8, 0x5

    const/4 v14, 0x7

    .line 620
    invoke-virtual {v13, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v15, 0x9

    .line 622
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 624
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v8, v5}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v14, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->MONTH:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v14, 0x2

    .line 625
    invoke-static {v13, v14}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 627
    :goto_a
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v12, v12, 0x1

    const/16 v8, 0xa

    goto/16 :goto_8

    .line 630
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 633
    :cond_f
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static timePickerSolMonthDay(I)[Ljava/lang/String;
    .locals 9

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 337
    invoke-static {p0}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result p0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/16 v3, 0xc

    if-gt v2, v3, :cond_7

    const/4 v3, 0x2

    .line 342
    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p0, :cond_0

    const/16 v3, 0x1d

    goto :goto_2

    :cond_0
    const/16 v3, 0x1c

    goto :goto_2

    :cond_1
    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    const/4 v3, 0x6

    if-eq v2, v3, :cond_3

    const/16 v3, 0x9

    if-eq v2, v3, :cond_3

    const/16 v3, 0xb

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x1f

    goto :goto_2

    :cond_3
    :goto_1
    const/16 v3, 0x1e

    :goto_2
    move v4, v1

    :goto_3
    if-gt v4, v3, :cond_6

    .line 352
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    const/16 v7, 0xa

    if-ge v2, v7, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_4
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->MONTH:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ge v4, v7, :cond_5

    .line 354
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->DAY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 356
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    const/4 p0, 0x0

    .line 359
    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static timePickerUSMonthDay(I)[Ljava/lang/String;
    .locals 8

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 364
    invoke-static {p0}, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result p0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/16 v3, 0xc

    if-gt v2, v3, :cond_6

    const/4 v3, 0x2

    .line 369
    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p0, :cond_0

    const/16 v3, 0x1d

    goto :goto_2

    :cond_0
    const/16 v3, 0x1c

    goto :goto_2

    :cond_1
    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    const/4 v3, 0x6

    if-eq v2, v3, :cond_3

    const/16 v3, 0x9

    if-eq v2, v3, :cond_3

    const/16 v3, 0xb

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x1f

    goto :goto_2

    :cond_3
    :goto_1
    const/16 v3, 0x1e

    :goto_2
    move v4, v1

    :goto_3
    if-gt v4, v3, :cond_5

    .line 379
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcn/nubia/redmagickyi/user/widget/LunarUtil;->MONTHS_SHORT:[Ljava/lang/String;

    add-int/lit8 v7, v2, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    if-ge v4, v6, :cond_4

    .line 380
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 381
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    .line 384
    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
