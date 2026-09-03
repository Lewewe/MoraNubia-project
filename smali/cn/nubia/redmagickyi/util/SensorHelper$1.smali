.class Lcn/nubia/redmagickyi/util/SensorHelper$1;
.super Landroid/view/OrientationEventListener;
.source "SensorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/SensorHelper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/SensorHelper;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/SensorHelper;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/SensorHelper$1;->this$0:Lcn/nubia/redmagickyi/util/SensorHelper;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x13b

    if-gt p1, v0, :cond_4

    const/16 v1, 0x2d

    if-gt p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x87

    if-le p1, v1, :cond_2

    if-gt p1, v2, :cond_2

    .line 23
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/SensorHelper$1;->this$0:Lcn/nubia/redmagickyi/util/SensorHelper;

    const/16 p1, 0x5a

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/util/SensorHelper;->access$002(Lcn/nubia/redmagickyi/util/SensorHelper;I)I

    goto :goto_1

    :cond_2
    const/16 v1, 0xe1

    if-le p1, v2, :cond_3

    if-gt p1, v1, :cond_3

    .line 25
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/SensorHelper$1;->this$0:Lcn/nubia/redmagickyi/util/SensorHelper;

    const/16 p1, 0xb4

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/util/SensorHelper;->access$002(Lcn/nubia/redmagickyi/util/SensorHelper;I)I

    goto :goto_1

    :cond_3
    if-le p1, v1, :cond_5

    if-gt p1, v0, :cond_5

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/SensorHelper$1;->this$0:Lcn/nubia/redmagickyi/util/SensorHelper;

    const/16 p1, 0x10e

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/util/SensorHelper;->access$002(Lcn/nubia/redmagickyi/util/SensorHelper;I)I

    goto :goto_1

    .line 21
    :cond_4
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/SensorHelper$1;->this$0:Lcn/nubia/redmagickyi/util/SensorHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/util/SensorHelper;->access$002(Lcn/nubia/redmagickyi/util/SensorHelper;I)I

    :cond_5
    :goto_1
    return-void
.end method
