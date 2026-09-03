.class Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$1;
.super Ljava/lang/Object;
.source "ChargeStyleViewOne.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne;->setTvBatteryCapacity(Landroid/view/ViewGroup;)Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne;

.field final synthetic val$mTvBatteryCapacity:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$1;->this$0:Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne;

    iput-object p2, p0, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$1;->val$mTvBatteryCapacity:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 32
    iget-object v0, p0, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$1;->val$mTvBatteryCapacity:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 33
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f30a3d7    # 0.69f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 34
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$1;->val$mTvBatteryCapacity:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->power_charge_battery_capacity_text_gradient_begin:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$color;->power_charge_battery_capacity_text_gradient_end:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v7

    const/4 v0, 0x2

    .line 37
    new-array v8, v0, [F

    fill-array-data v8, :array_0

    .line 38
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$1;->val$mTvBatteryCapacity:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    int-to-float v6, v1

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 39
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$1;->val$mTvBatteryCapacity:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$1;->val$mTvBatteryCapacity:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
