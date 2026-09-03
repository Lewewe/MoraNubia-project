.class public Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;
.super Ljava/lang/Object;
.source "HeaderLayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;
    }
.end annotation


# instance fields
.field private appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private btnFans:Landroid/widget/Button;

.field private parentFragment:Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;->parentFragment:Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;)Landroid/app/Activity;
    .locals 0

    .line 20
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;->parentFragment:Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/main/fragment/MainPageFragment;->getContext()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public initView()V
    .locals 3

    .line 34
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->app_bar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 35
    new-instance v1, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;-><init>(Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;)V

    .line 36
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->btn_fans:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;->btnFans:Landroid/widget/Button;

    .line 37
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public loadWebView(Ljava/lang/String;)V
    .locals 2

    .line 48
    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 50
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->btn_fans:I

    if-ne p1, v0, :cond_0

    .line 43
    sget-object p1, Lcn/nubia/redmagickyi/network/NetConfig;->MORA_FANS_GROUP:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;->loadWebView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
