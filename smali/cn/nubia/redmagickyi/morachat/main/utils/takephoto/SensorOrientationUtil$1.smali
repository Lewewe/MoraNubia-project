.class Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil$1;
.super Landroid/view/OrientationEventListener;
.source "SensorOrientationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;->access$000(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;I)I

    move-result p1

    .line 41
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;->access$100(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;)I

    move-result v0

    if-ne p1, v0, :cond_1

    return-void

    .line 44
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;->access$102(Lcn/nubia/redmagickyi/morachat/main/utils/takephoto/SensorOrientationUtil;I)I

    return-void
.end method
