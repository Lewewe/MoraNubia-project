.class Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$2;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->fadeOut(Landroid/view/View;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;Landroid/view/View;)V
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

    .line 154
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$2;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCounterValueChanged(FZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 158
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$2;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->access$400(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$2;->val$view:Landroid/view/View;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 160
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$1$2;->val$view:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    return-void
.end method
