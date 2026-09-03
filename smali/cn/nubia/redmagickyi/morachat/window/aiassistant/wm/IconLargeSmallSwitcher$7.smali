.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$7;
.super Ljava/lang/Object;
.source "IconLargeSmallSwitcher.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;->switchToLargeIcon(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;Landroid/animation/AnimatorListenerAdapter;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;

.field final synthetic val$easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;)V
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

    .line 185
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$7;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$7;->val$easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 188
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 189
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/IconLargeSmallSwitcher$7;->val$easyWindow:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    return-void
.end method
