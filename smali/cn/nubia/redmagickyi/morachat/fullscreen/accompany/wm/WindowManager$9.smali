.class Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$9;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/BezierAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->handleBotPop(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

.field final synthetic val$alphaBegin:F

.field final synthetic val$alphaEnd:F

.field final synthetic val$scaleXBegin:F

.field final synthetic val$scaleXEnd:F

.field final synthetic val$scaleYBegin:F

.field final synthetic val$scaleYEnd:F


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;FFFFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 500
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$9;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    iput p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$9;->val$scaleXBegin:F

    iput p3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$9;->val$scaleXEnd:F

    iput p4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$9;->val$scaleYBegin:F

    iput p5, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$9;->val$scaleYEnd:F

    iput p6, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$9;->val$alphaBegin:F

    iput p7, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$9;->val$alphaEnd:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(F)V
    .locals 3

    .line 503
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$9;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$9;->val$scaleXBegin:F

    iget v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$9;->val$scaleXEnd:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 504
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$9;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$9;->val$scaleYBegin:F

    iget v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$9;->val$scaleYEnd:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 505
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$9;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->access$1000(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$9;->val$alphaBegin:F

    iget p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$9;->val$alphaEnd:F

    sub-float/2addr p0, v1

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
