.class public Lcn/nubia/redmagickyi/user/widget/SolarToLunar;
.super Ljava/lang/Object;
.source "SolarToLunar.java"


# static fields
.field private static final LUNAR_LEAP_MONTH_TABLE:[C

.field private static final LUNAR_MONTH_DAYS_TABLE:[I

.field private static final SOLAR_LUNAR_OFFSET_TABLE:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x96

    .line 6
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/SolarToLunar;->LUNAR_MONTH_DAYS_TABLE:[I

    const/16 v0, 0x4b

    .line 25
    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/SolarToLunar;->LUNAR_LEAP_MONTH_TABLE:[C

    const/16 v0, 0x96

    .line 45
    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/SolarToLunar;->SOLAR_LUNAR_OFFSET_TABLE:[C

    return-void

    :array_0
    .array-data 4
        0x4ae0
        0xa570
        0x5268
        0xd260
        0xd950
        0x6aa8
        0x56a0
        0x9ad0
        0x4ae8
        0x4ae0
        0xa4d8
        0xa4d0
        0xd250
        0xd548
        0xb550
        0x56a0
        0x96d0
        0x95b0
        0x49b8
        0x49b0
        0xa4b0
        0xb258
        0x6a50
        0x6d40
        0xada8
        0x2b60
        0x9570
        0x4978
        0x4970
        0x64b0
        0xd4a0
        0xea50
        0x6d48
        0x5ad0
        0x2b60
        0x9370
        0x92e0
        0xc968
        0xc950
        0xd4a0
        0xda50
        0xb550
        0x56a0
        0xaad8
        0x25d0
        0x92d0
        0xc958
        0xa950
        0xb4a8
        0x6ca0
        0xb550
        0x55a8
        0x4da0
        0xa5b0
        0x52b8
        0x52b0
        0xa950
        0xe950
        0x6aa0
        0xad50
        0xab50
        0x4b60
        0xa570
        0xa570
        0x5260
        0xe930
        0xd950
        0x5aa8
        0x56a0
        0x96d0
        0x4ae8
        0x4ad0
        0xa4d0
        0xd268
        0xd250
        0xd528
        0xb540
        0xb6a0
        0x96d0
        0x95b0
        0x49b0
        0xa4b8
        0xa4b0
        0xb258
        0x6a50
        0x6d40
        0xada0
        0xab60
        0x9570
        0x4978
        0x4970
        0x64b0
        0x6a50
        0xea50
        0x6b28
        0x5ac0
        0xab60
        0x9368
        0x92e0
        0xc960
        0xd4a8
        0xd4a0
        0xda50
        0x5aa8
        0x56a0
        0xaad8
        0x25d0
        0x92d0
        0xc958
        0xa950
        0xb4a0
        0xb550
        0xb550
        0x55a8
        0x4ba0
        0xa5b0
        0x52b8
        0x52b0
        0xa930
        0x74a8
        0x6aa0
        0xad50
        0x4da8
        0x4b60
        0x9570
        0xa4e0
        0xd260
        0xe930
        0xd530
        0x5aa0
        0x6b50
        0x96d0
        0x4ae8
        0x4ad0
        0xa4d0
        0xd258
        0xd250
        0xd520
        0xdaa0
        0xb5a0
        0x56d0
        0x4ad8
        0x49b0
        0xa4b8
        0xa4b0
        0xaa50
        0xb528
        0x6d20
        0xada0
        0x55b0
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x50s
        0x4s
        0x0s
        0x20s
        0x60s
        0x5s
        0x0s
        0x20s
        0x70s
        0x5s
        0x0s
        0x40s
        0x2s
        0x6s
        0x0s
        0x50s
        0x3s
        0x7s
        0x0s
        0x60s
        0x4s
        0x0s
        0x20s
        0x70s
        0x5s
        0x0s
        0x30s
        0x80s
        0x6s
        0x0s
        0x40s
        0x3s
        0x7s
        0x0s
        0x50s
        0x4s
        0x8s
        0x0s
        0x60s
        0x4s
        0xas
        0x0s
        0x60s
        0x5s
        0x0s
        0x30s
        0x80s
        0x5s
        0x0s
        0x40s
        0x2s
        0x7s
        0x0s
        0x50s
        0x4s
        0x9s
        0x0s
        0x60s
        0x4s
        0x0s
        0x20s
        0x60s
        0x5s
        0x0s
        0x30s
        0xb0s
        0x6s
        0x0s
        0x50s
        0x2s
        0x7s
        0x0s
        0x50s
        0x3s
    .end array-data

    nop

    :array_2
    .array-data 2
        0x31s
        0x26s
        0x1cs
        0x2es
        0x22s
        0x18s
        0x2bs
        0x20s
        0x15s
        0x28s
        0x1ds
        0x30s
        0x24s
        0x19s
        0x2cs
        0x21s
        0x16s
        0x29s
        0x1fs
        0x32s
        0x26s
        0x1bs
        0x2es
        0x23s
        0x17s
        0x2bs
        0x20s
        0x16s
        0x28s
        0x1ds
        0x2fs
        0x24s
        0x19s
        0x2cs
        0x22s
        0x17s
        0x29s
        0x1es
        0x31s
        0x26s
        0x1as
        0x2ds
        0x23s
        0x18s
        0x2bs
        0x20s
        0x15s
        0x28s
        0x1cs
        0x2fs
        0x24s
        0x1as
        0x2cs
        0x21s
        0x17s
        0x2as
        0x1es
        0x30s
        0x26s
        0x1bs
        0x2ds
        0x23s
        0x18s
        0x2bs
        0x20s
        0x14s
        0x27s
        0x1ds
        0x2fs
        0x24s
        0x1as
        0x2ds
        0x21s
        0x16s
        0x29s
        0x1es
        0x30s
        0x25s
        0x1bs
        0x2es
        0x23s
        0x18s
        0x2bs
        0x20s
        0x32s
        0x27s
        0x1cs
        0x2fs
        0x24s
        0x1as
        0x2ds
        0x22s
        0x16s
        0x28s
        0x1es
        0x31s
        0x25s
        0x1bs
        0x2es
        0x23s
        0x17s
        0x2as
        0x1fs
        0x15s
        0x27s
        0x1cs
        0x30s
        0x25s
        0x19s
        0x2cs
        0x21s
        0x16s
        0x28s
        0x1es
        0x31s
        0x26s
        0x1bs
        0x2es
        0x23s
        0x18s
        0x2as
        0x1fs
        0x15s
        0x28s
        0x1cs
        0x2fs
        0x24s
        0x19s
        0x2bs
        0x21s
        0x16s
        0x29s
        0x1es
        0x31s
        0x26s
        0x1bs
        0x2ds
        0x22s
        0x17s
        0x2as
        0x1fs
        0x15s
        0x28s
        0x1ds
        0x2fs
        0x24s
        0x19s
        0x2cs
        0x20s
        0x16s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calendarSolarToLundar(III)Ljava/lang/String;
    .locals 6

    .line 67
    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/user/widget/SolarToLunar;->getSolarNewYearOffsetDays(III)I

    move-result p1

    .line 68
    invoke-static {p0}, Lcn/nubia/redmagickyi/user/widget/SolarToLunar;->getLunarLeapMonth(I)I

    move-result p2

    .line 69
    sget-object v0, Lcn/nubia/redmagickyi/user/widget/SolarToLunar;->SOLAR_LUNAR_OFFSET_TABLE:[C

    add-int/lit16 v1, p0, -0x76d

    aget-char v0, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x1

    if-ge p1, v0, :cond_2

    add-int/lit8 p0, p0, -0x1

    sub-int/2addr v0, p1

    move p1, v0

    move p2, v1

    .line 74
    :goto_0
    invoke-static {p0, p2}, Lcn/nubia/redmagickyi/user/widget/SolarToLunar;->getLunarMonthDays(II)I

    move-result v3

    if-le v0, v3, :cond_0

    .line 76
    invoke-static {p0, p2}, Lcn/nubia/redmagickyi/user/widget/SolarToLunar;->getLunarMonthDays(II)I

    move-result p1

    sub-int p1, v0, p1

    add-int/lit8 p2, p2, -0x1

    move v5, v0

    move v0, p1

    move p1, v5

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    move p1, v2

    goto :goto_3

    .line 81
    :cond_1
    invoke-static {p0, p2}, Lcn/nubia/redmagickyi/user/widget/SolarToLunar;->getLunarMonthDays(II)I

    move-result p1

    sub-int/2addr p1, v0

    add-int/2addr p1, v2

    goto :goto_3

    :cond_2
    sub-int/2addr p1, v0

    add-int/lit8 v0, p1, 0x1

    move v3, v2

    :goto_1
    if-ltz p1, :cond_5

    add-int/lit8 v0, p1, 0x1

    .line 90
    invoke-static {p0, v3}, Lcn/nubia/redmagickyi/user/widget/SolarToLunar;->getLunarMonthDays(II)I

    move-result v4

    sub-int/2addr p1, v4

    if-ne p2, v3, :cond_4

    if-ltz p1, :cond_4

    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v4, v3, 0xc

    .line 93
    invoke-static {p0, v4}, Lcn/nubia/redmagickyi/user/widget/SolarToLunar;->getLunarMonthDays(II)I

    move-result v4

    sub-int/2addr p1, v4

    if-gtz p1, :cond_3

    add-int/lit8 v3, v3, 0xd

    goto :goto_2

    :cond_3
    if-nez p1, :cond_4

    move v0, v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    move p1, v0

    add-int/lit8 p2, v3, -0x1

    :goto_3
    if-le p2, v1, :cond_6

    add-int/lit8 p2, p2, -0xc

    move v0, v2

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    .line 109
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 110
    const-string v1, "0"

    if-ne v0, v2, :cond_7

    move-object v0, v1

    goto :goto_5

    :cond_7
    move-object v0, v3

    :goto_5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x9

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    if-le p2, v0, :cond_8

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 112
    new-instance p2, Ljava/lang/StringBuilder;

    if-le p1, v0, :cond_9

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getLunarLeapMonth(I)I
    .locals 2

    .line 127
    sget-object v0, Lcn/nubia/redmagickyi/user/widget/SolarToLunar;->LUNAR_LEAP_MONTH_TABLE:[C

    add-int/lit16 v1, p0, -0x76d

    div-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    .line 129
    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    and-int/lit8 p0, v0, 0xf

    return p0

    :cond_0
    and-int/lit16 p0, v0, 0xf0

    shr-int/lit8 p0, p0, 0x4

    return p0
.end method

.method static getLunarMonthDays(II)I
    .locals 5

    .line 138
    invoke-static {p0}, Lcn/nubia/redmagickyi/user/widget/SolarToLunar;->getLunarLeapMonth(I)I

    move-result v0

    const/16 v1, 0xc

    if-le p1, v1, :cond_0

    add-int/lit8 v1, p1, -0xc

    if-ne v1, v0, :cond_1

    :cond_0
    if-gez p1, :cond_2

    :cond_1
    const/4 p0, -0x1

    return p0

    :cond_2
    add-int/lit8 v1, p1, -0xc

    const/16 v2, 0x1d

    const/16 v3, 0x1e

    const v4, 0x8000

    if-ne v1, v0, :cond_4

    if-lez v0, :cond_4

    .line 145
    sget-object p1, Lcn/nubia/redmagickyi/user/widget/SolarToLunar;->LUNAR_MONTH_DAYS_TABLE:[I

    add-int/lit16 p0, p0, -0x76d

    aget p0, p1, p0

    shr-int p1, v4, v0

    and-int/2addr p0, p1

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v3

    :cond_4
    if-lez v0, :cond_5

    if-le p1, v0, :cond_5

    add-int/lit8 p1, p1, 0x1

    .line 156
    :cond_5
    sget-object v0, Lcn/nubia/redmagickyi/user/widget/SolarToLunar;->LUNAR_MONTH_DAYS_TABLE:[I

    add-int/lit16 p0, p0, -0x76d

    aget p0, v0, p0

    add-int/lit8 p1, p1, -0x1

    shr-int p1, v4, p1

    and-int/2addr p0, p1

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v3
.end method

.method static getSolarNewYearOffsetDays(III)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    .line 120
    invoke-static {p0, v2}, Lcn/nubia/redmagickyi/user/widget/SolarToLunar;->getSolarYearMonthDays(II)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr p2, v1

    add-int/2addr v0, p2

    return v0
.end method

.method static getSolarYearMonthDays(II)I
    .locals 1

    const/4 v0, 0x1

    .line 166
    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x5

    .line 167
    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x8

    .line 168
    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0xc

    .line 169
    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x4

    .line 171
    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x9

    .line 172
    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0xb

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 174
    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 175
    invoke-static {p0}, Lcn/nubia/redmagickyi/user/widget/SolarToLunar;->isSolarLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x1d

    return p0

    :cond_2
    const/16 p0, 0x1c

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    const/16 p0, 0x1e

    return p0

    :cond_5
    :goto_1
    const/16 p0, 0x1f

    return p0
.end method

.method static isSolarLeapYear(I)Z
    .locals 1

    .line 186
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_1

    :cond_0
    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
