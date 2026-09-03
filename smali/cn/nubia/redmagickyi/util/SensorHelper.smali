.class public Lcn/nubia/redmagickyi/util/SensorHelper;
.super Ljava/lang/Object;
.source "SensorHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SensorHelper"


# instance fields
.field private mrientationListener:Landroid/view/OrientationEventListener;

.field private orientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcn/nubia/redmagickyi/util/SensorHelper;->orientation:I

    .line 14
    new-instance v0, Lcn/nubia/redmagickyi/util/SensorHelper$1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lcn/nubia/redmagickyi/util/SensorHelper$1;-><init>(Lcn/nubia/redmagickyi/util/SensorHelper;Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/util/SensorHelper;->mrientationListener:Landroid/view/OrientationEventListener;

    return-void
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/util/SensorHelper;I)I
    .locals 0

    .line 9
    iput p1, p0, Lcn/nubia/redmagickyi/util/SensorHelper;->orientation:I

    return p1
.end method


# virtual methods
.method public disable()V
    .locals 2

    .line 34
    sget-object v0, Lcn/nubia/redmagickyi/util/SensorHelper;->TAG:Ljava/lang/String;

    const-string v1, "disable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/SensorHelper;->mrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    return-void
.end method

.method public enable()V
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/SensorHelper;->mrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method public getLandLock()Z
    .locals 1

    .line 43
    iget p0, p0, Lcn/nubia/redmagickyi/util/SensorHelper;->orientation:I

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getOrientation()I
    .locals 0

    .line 51
    iget p0, p0, Lcn/nubia/redmagickyi/util/SensorHelper;->orientation:I

    return p0
.end method

.method public getPortLock()Z
    .locals 1

    .line 47
    iget p0, p0, Lcn/nubia/redmagickyi/util/SensorHelper;->orientation:I

    if-eqz p0, :cond_1

    const/16 v0, 0xb4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
