.class Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$4;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 414
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$4;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 417
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$4;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$4;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$4;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->access$600(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$4;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->access$500(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 420
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$4;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->access$700(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager$4;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;->access$500(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/wm/WindowManager;)Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
