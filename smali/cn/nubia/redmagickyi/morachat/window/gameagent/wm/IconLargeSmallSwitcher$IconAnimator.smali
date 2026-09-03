.class Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$IconAnimator;
.super Landroid/animation/ValueAnimator;
.source "IconLargeSmallSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconAnimator"
.end annotation


# instance fields
.field private isCanceled:Z

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 279
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$IconAnimator;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$1;)V
    .locals 0

    .line 279
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$IconAnimator;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 284
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$IconAnimator;->isCanceled:Z

    .line 285
    invoke-super {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public isCanceled()Z
    .locals 0

    .line 289
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/IconLargeSmallSwitcher$IconAnimator;->isCanceled:Z

    return p0
.end method
