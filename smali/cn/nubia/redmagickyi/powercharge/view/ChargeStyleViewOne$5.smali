.class Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$5;
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

.field final synthetic val$layoutBattery:Landroid/view/View;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne;Landroid/view/View;)V
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

    .line 107
    iput-object p1, p0, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$5;->this$0:Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne;

    iput-object p2, p0, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$5;->val$layoutBattery:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 110
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealSize()[I

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$5;->val$layoutBattery:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 112
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    int-to-float v0, v0

    const/high16 v3, 0x451b0000    # 2480.0f

    div-float/2addr v0, v3

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 113
    iget-object p0, p0, Lcn/nubia/redmagickyi/powercharge/view/ChargeStyleViewOne$5;->val$layoutBattery:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
