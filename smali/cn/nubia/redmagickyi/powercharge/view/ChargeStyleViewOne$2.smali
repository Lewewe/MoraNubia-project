.class Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$2;
.super Ljava/lang/Object;
.source "ChargeStyleViewOne.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne;->initView(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne;

.field final synthetic val$mImageBatteryCapacity:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne;Landroid/widget/ImageView;)V
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

    .line 72
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$2;->this$0:Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne;

    iput-object p2, p0, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$2;->val$mImageBatteryCapacity:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 75
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealSize()[I

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$2;->val$mImageBatteryCapacity:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    .line 77
    aget v2, v0, v2

    int-to-float v2, v2

    const v3, 0x3f30a3d7    # 0.69f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 78
    iget-object v2, p0, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$2;->val$mImageBatteryCapacity:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    int-to-float v0, v0

    const/high16 v3, 0x451b0000    # 2480.0f

    div-float/2addr v0, v3

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 79
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$2;->val$mImageBatteryCapacity:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
