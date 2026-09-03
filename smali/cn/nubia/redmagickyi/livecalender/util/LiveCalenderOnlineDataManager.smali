.class public Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;
.super Ljava/lang/Object;
.source "LiveCalenderOnlineDataManager.java"


# static fields
.field private static instance:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;


# instance fields
.field private liveCalenderBean:Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->liveCalenderBean:Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;

    .line 42
    new-instance p0, Ljava/util/Vector;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->setLiveActivities(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;Ljava/lang/String;)J
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->getTimeMillisByHHMM(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private getDateByYYYYMMDD(I)Ljava/util/Date;
    .locals 1

    .line 311
    :try_start_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyyMMdd"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getExistsLiveActivitiesOfDate(Ljava/util/List;Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;)Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;",
            ">;",
            "Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;",
            ")",
            "Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;
    .locals 1

    .line 34
    sget-object v0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->instance:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->instance:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    .line 37
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->instance:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    return-object v0
.end method

.method private getTimeMillisByHHMM(Ljava/lang/String;)J
    .locals 1

    .line 302
    :try_start_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private queryTotalLiveActivities()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->liveCalenderBean:Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->getLiveActivities()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private scaleBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0

    if-eqz p2, :cond_0

    .line 284
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    const/4 p0, 0x0

    .line 288
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initBitmapOptionsDensity(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 289
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 292
    :cond_1
    invoke-static {p1, p3, p4}, Lcn/nubia/redmagickyi/util/BitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eq p0, p1, :cond_2

    .line 294
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    :goto_0
    return-object p0
.end method

.method private transform(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 236
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 237
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->queryNowTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 239
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;

    .line 240
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le p0, v3, :cond_0

    .line 242
    sget-object v3, Lcn/nubia/redmagickyi/livecalender/util/Statement;->EXPIRED:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->setStatement(Lcn/nubia/redmagickyi/livecalender/util/Statement;)V

    goto :goto_0

    :cond_0
    if-ge p0, v3, :cond_1

    .line 244
    sget-object v3, Lcn/nubia/redmagickyi/livecalender/util/Statement;->FUTURE:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->setStatement(Lcn/nubia/redmagickyi/livecalender/util/Statement;)V

    goto :goto_0

    .line 246
    :cond_1
    sget-object v3, Lcn/nubia/redmagickyi/livecalender/util/Statement;->NOW:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->setStatement(Lcn/nubia/redmagickyi/livecalender/util/Statement;)V

    goto :goto_0

    :cond_2
    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->recycleBitmaps()V

    .line 47
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->queryTotalLiveActivities()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public parseLiveCalendersResponse(Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;
    .locals 7

    .line 108
    new-instance v0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;-><init>()V

    .line 109
    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->setQueryNowTime(Ljava/util/Date;)V

    .line 110
    invoke-virtual {v0, p3}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->setQueryBeginTime(Ljava/util/Date;)V

    .line 111
    invoke-virtual {v0, p4}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->setQueryEndTime(Ljava/util/Date;)V

    .line 112
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;->getData()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;->getData()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_7

    .line 114
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;->getData()Ljava/util/List;

    move-result-object p3

    new-instance p4, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager$1;

    invoke-direct {p4, p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager$1;-><init>(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;)V

    invoke-static {p3, p4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p3, 0x0

    move p4, p3

    .line 150
    :goto_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p4, v1, :cond_7

    .line 151
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;

    .line 153
    new-instance v2, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v2, v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;-><init>(Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;)V

    .line 154
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->getIs_offline()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, p3

    :goto_1
    invoke-virtual {v2, v4}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->setOffline(Z)V

    .line 155
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->getDs()I

    move-result v3

    invoke-direct {p0, v3}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->getDateByYYYYMMDD(I)Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    .line 159
    :cond_1
    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->setDate(Ljava/util/Date;)V

    .line 160
    invoke-direct {p0, p2, v2}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->getExistsLiveActivitiesOfDate(Ljava/util/List;Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;)Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v2, v3

    .line 165
    :cond_2
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getBgImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 166
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->getBg_image()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->setBgImageUrl(Ljava/lang/String;)V

    .line 168
    :cond_3
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 169
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->getProfile_image()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->setProfileImageUrl(Ljava/lang/String;)V

    .line 171
    :cond_4
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->getList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    move v3, p3

    .line 172
    :goto_2
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 173
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;

    .line 175
    new-instance v5, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v5, v2}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;-><init>(Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;)V

    .line 176
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->setId(I)V

    .line 177
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->setTitle(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->setContent(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;->getBegin_time()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->setBeginTime(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;->getEnd_time()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->setEndTime(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/livecalender/network/model/LiveCalenderLoadResponse$LiveActivitiesOfDate$LiveActivity;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->setAddress(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 184
    :cond_5
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 185
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_6
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager$2;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager$2;-><init>(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_3
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_0

    .line 210
    :cond_7
    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->setLiveActivities(Ljava/util/List;)V

    return-object v0
.end method

.method public declared-synchronized preloadBitmap()V
    .locals 6

    monitor-enter p0

    .line 268
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->queryLiveActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_0

    .line 269
    monitor-exit p0

    return-void

    .line 272
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->queryLiveActivities()Ljava/util/List;

    move-result-object v0

    .line 273
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;

    .line 274
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->livecalender_item_left_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 275
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v2

    .line 276
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getBgImagePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getBgImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {p0, v4, v5, v2, v3}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->scaleBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->setBgImageBitmap(Landroid/graphics/Bitmap;)V

    .line 277
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getBgImageGrayPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getBgImageGrayBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {p0, v4, v5, v2, v3}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->scaleBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->setBgImageGrayBitmap(Landroid/graphics/Bitmap;)V

    .line 278
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getProfileImagePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getProfileImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {p0, v4, v5, v2, v3}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->scaleBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->setProfileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 279
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getProfileImageGrayPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getProfileImageGrayBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {p0, v4, v5, v2, v3}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->scaleBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->setProfileImageGrayBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 281
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public queryBeginTime()Ljava/util/Date;
    .locals 0

    .line 97
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->liveCalenderBean:Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->getQueryBeginTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public queryEndTime()Ljava/util/Date;
    .locals 0

    .line 101
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->liveCalenderBean:Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->getQueryEndTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public queryLiveActivities(I)Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;
    .locals 3

    .line 84
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->queryTotalLiveActivities()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;

    .line 85
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public queryLiveActivities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->queryTotalLiveActivities()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->transform(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryNowTime()Ljava/util/Date;
    .locals 0

    .line 93
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->liveCalenderBean:Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->getQueryNowTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public recycleBitmaps()V
    .locals 3

    .line 51
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->queryLiveActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->queryLiveActivities()Ljava/util/List;

    move-result-object p0

    .line 55
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;

    .line 56
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getBgImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 57
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getBgImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 58
    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->setBgImageBitmap(Landroid/graphics/Bitmap;)V

    .line 60
    :cond_2
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getBgImageGrayBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 61
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getBgImageGrayBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 62
    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->setBgImageGrayBitmap(Landroid/graphics/Bitmap;)V

    .line 64
    :cond_3
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getProfileImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 65
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getProfileImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 66
    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->setProfileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 68
    :cond_4
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getProfileImageGrayBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getProfileImageGrayBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 70
    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->setProfileImageGrayBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public updateLiveActivities(Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;)V
    .locals 2

    if-nez p1, :cond_0

    .line 220
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->clear()V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->liveCalenderBean:Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->getQueryNowTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->setQueryNowTime(Ljava/util/Date;)V

    .line 223
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->liveCalenderBean:Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->getQueryBeginTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->setQueryBeginTime(Ljava/util/Date;)V

    .line 224
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->liveCalenderBean:Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->getQueryEndTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->setQueryEndTime(Ljava/util/Date;)V

    .line 225
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->clear()V

    .line 226
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->getLiveActivities()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 227
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->queryTotalLiveActivities()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->getLiveActivities()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method
