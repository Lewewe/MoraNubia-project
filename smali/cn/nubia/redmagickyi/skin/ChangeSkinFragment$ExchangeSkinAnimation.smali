.class Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;
.super Ljava/lang/Object;
.source "ChangeSkinFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExchangeSkinAnimation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation$SetClickState;
    }
.end annotation


# instance fields
.field private isClickable:Z

.field private playHideView:Landroid/view/View;

.field private playShowView:Landroid/view/View;

.field private setClickState:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation$SetClickState;

.field final synthetic this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1395
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x1

    .line 1392
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->isClickable:Z

    .line 1396
    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$2000(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Landroid/view/ViewGroup;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->playHideView:Landroid/view/View;

    .line 1397
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$id;->layout_base:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->playShowView:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;Landroid/view/View;Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$1;)V
    .locals 0

    .line 1386
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;-><init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;)Z
    .locals 0

    .line 1386
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->isPlaying()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;I)Z
    .locals 0

    .line 1386
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->playExchangedAnimation(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;)V
    .locals 0

    .line 1386
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->stopExchangedAnimation()V

    return-void
.end method

.method static synthetic access$2302(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;Z)Z
    .locals 0

    .line 1386
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->isClickable:Z

    return p1
.end method

.method private isPlaying()Z
    .locals 1

    .line 1427
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->playHideView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private playExchangedAnimation(I)Z
    .locals 4

    .line 1401
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->isPlaying()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$200(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1402
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->ClearModeChange(Z)V

    .line 1403
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcn/nubia/redmagickyi/util/Utils;->PREF_FOCUS_LEN_VALUE_PORT:[Ljava/lang/String;

    aget-object v3, v3, v1

    goto :goto_0

    :cond_0
    sget-object v3, Lcn/nubia/redmagickyi/util/Utils;->PREF_FOCUS_LEN_VALUE_LAND:[Ljava/lang/String;

    aget-object v3, v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->initChangeFocus(Ljava/lang/String;)V

    .line 1404
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->setClickable(Z)V

    .line 1405
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->playHideView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1406
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->playShowView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1408
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$200(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;->playExchangedAnimation(I)V

    return v2

    :cond_1
    return v1
.end method

.method private setClickable(Z)V
    .locals 3

    .line 1438
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->isClickable:Z

    .line 1439
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->setClickState:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation$SetClickState;

    if-eqz v0, :cond_0

    .line 1440
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->playShowView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    if-nez p1, :cond_1

    .line 1443
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->playShowView:Landroid/view/View;

    new-instance v0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation$SetClickState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation$SetClickState;-><init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->setClickState:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation$SetClickState;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private stopExchangedAnimation()V
    .locals 3

    .line 1416
    invoke-direct {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->isPlaying()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$200(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1417
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->setClickable(Z)V

    .line 1418
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->playHideView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1419
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->playShowView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1421
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$200(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ChangeSkinOpCallback;->stopExchangedAnimation()V

    .line 1423
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->ClearModeChange(Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1432
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->isClickable:Z

    if-eqz p1, :cond_0

    .line 1433
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$ExchangeSkinAnimation;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$2100(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)V

    :cond_0
    return-void
.end method
