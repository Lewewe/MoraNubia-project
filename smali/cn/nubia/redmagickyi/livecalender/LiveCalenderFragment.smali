.class public Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;
.source "LiveCalenderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LiveCalenderFragment"


# instance fields
.field private adapter:Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;

.field private back:Landroid/view/View;

.field private cbPush:Landroid/widget/CheckBox;

.field private layoutDate:Landroid/view/View;

.field private layoutMonth:Landroid/view/View;

.field private liveCalenderSubscribeManager:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;

.field private permissionRequestingView:Landroid/widget/CheckBox;

.field private rootView:Landroid/view/ViewGroup;

.field private rvLiveCalender:Landroidx/recyclerview/widget/RecyclerView;

.field private tvDateBegin:Landroid/widget/TextView;

.field private tvDateEnd:Landroid/widget/TextView;

.field private tvMonth:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;-><init>()V

    return-void
.end method

.method private animRootView(Z)V
    .locals 5

    .line 172
    const-string v0, "always_visible"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 173
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 174
    iget-object p1, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcn/nubia/redmagickyi/main/R$id;->layout_child_fragment:I

    if-eq v2, v3, :cond_0

    const/16 v2, 0x8

    .line 176
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v2

    const-wide/16 v3, 0x64

    .line 179
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 181
    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    .line 186
    :goto_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 187
    iget-object v2, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 188
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcn/nubia/redmagickyi/main/R$id;->layout_child_fragment:I

    if-eq v3, v4, :cond_2

    .line 189
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 190
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 192
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->getContext()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/redmagickyi/util/NubiaAnimationUtil;->AlphaIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private initData()V
    .locals 5

    .line 137
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy.MM.dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->queryBeginTime()Ljava/util/Date;

    move-result-object v1

    .line 139
    sget-object v2, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initData => queryBeginTime : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    .line 141
    iget-object v3, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->tvDateBegin:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->queryEndTime()Ljava/util/Date;

    move-result-object v1

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initData => queryEndTime : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 146
    iget-object v2, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->tvDateEnd:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u2014\u2014"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 148
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 149
    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->tvMonth:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcn/nubia/redmagickyi/util/TimeStrUtils;->getMonth(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->adapter:Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;

    if-nez v0, :cond_2

    .line 153
    new-instance v0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->queryLiveActivities()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->adapter:Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;

    .line 154
    new-instance v1, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment$2;-><init>(Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->setOnItemClickedListener(Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$OnItemClickedListener;)V

    .line 162
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->rvLiveCalender:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->adapter:Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 164
    :cond_2
    invoke-static {}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->queryLiveActivities()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->setData(Ljava/util/List;)V

    .line 165
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->adapter:Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->notifyDataSetChanged()V

    .line 168
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->liveCalenderSubscribeManager:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;->initSubscribeState()V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 55
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->init(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->getContext()Landroid/app/Activity;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_gamespace:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->rootView:Landroid/view/ViewGroup;

    .line 57
    new-instance p2, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;

    invoke-direct {p2, p1}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->liveCalenderSubscribeManager:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 7

    .line 70
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 71
    :goto_0
    sget v4, Lcn/nubia/redmagickyi/main/R$id;->back:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->back:Landroid/view/View;

    .line 72
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    sget v4, Lcn/nubia/redmagickyi/main/R$id;->cb_push:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->cbPush:Landroid/widget/CheckBox;

    .line 74
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 75
    iget-object v4, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->cbPush:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->liveCalenderSubscribeManager:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;->checkSubscribeState()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 76
    iget-object v4, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->cbPush:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 77
    iget-object v4, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->cbPush:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 78
    sget v4, Lcn/nubia/redmagickyi/main/R$id;->layout_month:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->layoutMonth:Landroid/view/View;

    if-nez v0, :cond_1

    .line 79
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_64_dp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 81
    iget-object v5, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->layoutMonth:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 82
    invoke-virtual {v5}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v6

    if-eq v6, v4, :cond_1

    .line 83
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 84
    iget-object v4, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->layoutMonth:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    :cond_1
    sget v4, Lcn/nubia/redmagickyi/main/R$id;->tv_month:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->tvMonth:Landroid/widget/TextView;

    .line 88
    sget v4, Lcn/nubia/redmagickyi/main/R$id;->layout_date:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->layoutDate:Landroid/view/View;

    if-nez v0, :cond_2

    .line 89
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_61_dp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 91
    iget-object v5, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->layoutDate:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 92
    invoke-virtual {v5}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v6

    if-eq v6, v4, :cond_2

    .line 93
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 94
    iget-object v4, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->layoutDate:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    :cond_2
    sget v4, Lcn/nubia/redmagickyi/main/R$id;->tv_date_begin:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->tvDateBegin:Landroid/widget/TextView;

    .line 98
    sget v4, Lcn/nubia/redmagickyi/main/R$id;->tv_date_end:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->tvDateEnd:Landroid/widget/TextView;

    .line 99
    sget v4, Lcn/nubia/redmagickyi/main/R$id;->rv_livecalender:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->rvLiveCalender:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    .line 102
    new-instance p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {p1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    goto :goto_1

    .line 104
    :cond_3
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->getContext()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p1, v3, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 106
    :goto_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->rvLiveCalender:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 107
    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->rvLiveCalender:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment$1;

    invoke-direct {v2, p0, v0, p1}, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment$1;-><init>(Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;ZLandroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    if-eqz v0, :cond_4

    .line 127
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->getContext()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_52_dp:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 128
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_52_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_4

    .line 130
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->getContext()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_56_dp:I

    goto :goto_2

    :cond_5
    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_10_dp:I

    :goto_2
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 131
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v1

    if-eqz v1, :cond_6

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_56_dp:I

    goto :goto_3

    :cond_6
    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_10_dp:I

    :goto_3
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 133
    :goto_4
    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->rvLiveCalender:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->rvLiveCalender:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v1, p1, v2, v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setPaddingRelative(IIII)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 235
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->cb_push:I

    if-ne p1, v0, :cond_0

    .line 236
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->liveCalenderSubscribeManager:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;->updateSubscribeState(Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back:I

    if-ne p1, v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->onBackPress()Z

    :cond_0
    return-void
.end method

.method public onCreatedView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 62
    sget p3, Lcn/nubia/redmagickyi/main/R$layout;->livecalender_activity:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->initView(Landroid/view/View;)V

    .line 64
    invoke-direct {p0}, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->initData()V

    const/4 p2, 0x1

    .line 65
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->animRootView(Z)V

    return-object p1
.end method

.method public onHideFragment()V
    .locals 1

    .line 249
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onHideFragment()V

    const/4 v0, 0x0

    .line 250
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->animRootView(Z)V

    .line 251
    invoke-static {}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderOnlineDataManager;->recycleBitmaps()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 201
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseGameSpaceFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 202
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->liveCalenderSubscribeManager:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 205
    iget-object p1, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->permissionRequestingView:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 206
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 p1, 0x0

    .line 207
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->permissionRequestingView:Landroid/widget/CheckBox;

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->cb_push:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 216
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_1

    .line 217
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-nez p2, :cond_0

    .line 219
    iget-object p2, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->liveCalenderSubscribeManager:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;

    if-eqz p2, :cond_0

    .line 220
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderSubscribeManager;->requestAndCheckPermission(Landroid/app/Activity;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 221
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->permissionRequestingView:Landroid/widget/CheckBox;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p1, 0x0

    .line 226
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/LiveCalenderFragment;->permissionRequestingView:Landroid/widget/CheckBox;

    :cond_1
    return v2
.end method
