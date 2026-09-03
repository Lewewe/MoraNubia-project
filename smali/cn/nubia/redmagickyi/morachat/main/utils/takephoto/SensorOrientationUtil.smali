.class public Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;
.super Ljava/lang/Object;
.source "SensorOrientationUtil.java"


# static fields
.field private static instance:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOrEventListener:Landroid/view/OrientationEventListener;

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;->instance:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;I)I
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;->convert2Orientation(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;)I
    .locals 0

    .line 7
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;->mOrientation:I

    return p0
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;I)I
    .locals 0

    .line 7
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;->mOrientation:I

    return p1
.end method

.method private convert2Orientation(I)I
    .locals 3

    const/4 p0, 0x0

    const/16 v0, 0x2d

    if-ltz p1, :cond_0

    if-le p1, v0, :cond_4

    :cond_0
    const/16 v1, 0x13b

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x87

    if-le p1, v0, :cond_2

    if-gt p1, v2, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/16 v0, 0xe1

    if-le p1, v2, :cond_3

    if-gt p1, v0, :cond_3

    const/4 p0, 0x2

    goto :goto_0

    :cond_3
    if-le p1, v0, :cond_4

    if-gt p1, v1, :cond_4

    const/4 p0, 0x3

    :cond_4
    :goto_0
    return p0
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;
    .locals 1

    .line 15
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;->instance:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;

    return-object v0
.end method

.method private initListener()V
    .locals 2

    .line 33
    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil$1;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil$1;-><init>(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;->mOrEventListener:Landroid/view/OrientationEventListener;

    return-void
.end method


# virtual methods
.method public getOrientation()I
    .locals 0

    .line 50
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;->mOrientation:I

    return p0
.end method

.method public start(Landroid/content/Context;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;->mContext:Landroid/content/Context;

    .line 20
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;->mOrEventListener:Landroid/view/OrientationEventListener;

    if-nez p1, :cond_0

    .line 21
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;->initListener()V

    .line 23
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;->mOrEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;->mOrEventListener:Landroid/view/OrientationEventListener;

    if-eqz p0, :cond_0

    .line 28
    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    return-void
.end method
