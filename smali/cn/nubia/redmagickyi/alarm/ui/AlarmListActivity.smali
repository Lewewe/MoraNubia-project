.class public Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "AlarmListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter$AlarmSwitchClickInterface;


# static fields
.field private static TAG:Ljava/lang/String; = "AlarmListActivity"


# instance fields
.field private adapter:Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;

.field private addAlarm:Landroid/widget/TextView;

.field private back:Landroid/widget/ImageView;

.field datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;",
            ">;"
        }
    .end annotation
.end field

.field layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private reMagicAlarmDataManager:Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->datas:Ljava/util/List;

    .line 44
    invoke-static {p0}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->reMagicAlarmDataManager:Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;

    return-void
.end method

.method private testAlarm(I)V
    .locals 2

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/redmagickyi/alarm/ui/RedmagicAlarmClockActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->datas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    const-string v1, "alarm_beans"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 168
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public AddAlarm()V
    .locals 3

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    invoke-static {}, Lcn/nubia/redmagickyi/unity/motion/MotionConfigManager;->queryAllMotions()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    const-string v2, "actionList"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public initAdapter()V
    .locals 3

    .line 79
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 80
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->datas:Ljava/util/List;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->reMagicAlarmDataManager:Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->queryAllAlarm()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    new-instance v0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->datas:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->adapter:Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;

    .line 83
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;->setAlarmOnClickListener(Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter$AlarmSwitchClickInterface;)V

    .line 84
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 85
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->adapter:Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 86
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity$2;-><init>(Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public initview()V
    .locals 2

    .line 60
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->model_name:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->title:Landroid/widget/TextView;

    .line 61
    sget v1, Lcn/nubia/redmagickyi/main/R$string;->alarm_redmagickyi:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 62
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->title:Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 63
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->back:Landroid/widget/ImageView;

    const/4 v1, 0x1

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 65
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->back:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity$1;-><init>(Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->back:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->add_alarm:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->addAlarm:Landroid/widget/TextView;

    .line 73
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->recycler_view:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 121
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->back:I

    if-ne p1, v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->onBackPressed()V

    goto :goto_0

    .line 123
    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->add_alarm:I

    if-ne p1, v0, :cond_1

    .line 124
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->AddAlarm()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->alarm_list_activity:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->initview()V

    .line 50
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->initAdapter()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 115
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(I)V
    .locals 3

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/redmagickyi/alarm/ui/AlarmEditorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    const-string v1, "is_editor"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->datas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    const-string v1, "alarm_beans"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 161
    invoke-static {}, Lcn/nubia/redmagickyi/unity/motion/MotionConfigManager;->queryAllMotions()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    const-string v1, "actionList"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 102
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onResume()V

    .line 103
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 104
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->datas:Ljava/util/List;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->reMagicAlarmDataManager:Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->queryAllAlarm()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->adapter:Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;->notifyDataSetChanged()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->reMagicAlarmDataManager:Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->queryAllAlarm()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->reMagicAlarmDataManager:Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/database/ReMagicAlarmDataManager;->queryAllAlarm()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 109
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public onSwitchCheck(ZI)V
    .locals 11

    .line 137
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/ui/AlarmListActivity;->datas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    if-eqz p1, :cond_1

    .line 139
    invoke-virtual {v8}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getRepeat_type()I

    move-result v0

    sget v1, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->RING_CUSTOM:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 140
    invoke-virtual {v8}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getRepeat_week()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getWeekList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getId()I

    move-result v4

    .line 141
    invoke-virtual {v8}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getTimeValue(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v8}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getTimeValue(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    move-object v0, p0

    move v2, v4

    move v4, v5

    move v5, v6

    move-wide v6, v9

    .line 140
    invoke-static/range {v0 .. v7}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->setPeriodAlarm(Landroid/content/Context;[Ljava/lang/String;IIIZJ)V

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {v8}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getId()I

    move-result v1

    .line 144
    invoke-virtual {v8}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getTimeValue(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v8}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getTimeValue(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move-wide v5, v6

    .line 143
    invoke-static/range {v0 .. v6}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->setSingleAlarm(Landroid/content/Context;IIIZJ)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {v8}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getId()I

    move-result v0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->realCancelClock(Landroid/content/Context;I)V

    .line 148
    invoke-virtual {v8}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getId()I

    move-result v0

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->UpdateAlarmRingTimemillis(Landroid/content/Context;IJ)V

    :goto_0
    if-eqz p1, :cond_2

    .line 150
    sget v0, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->SWITCH_ON:I

    goto :goto_1

    :cond_2
    sget v0, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->SWITCH_OFF:I

    :goto_1
    invoke-virtual {v8, v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->setAlarm_switch(I)V

    .line 151
    invoke-virtual {v8}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->UpdateSwitch(Landroid/content/Context;ZI)V

    return-void
.end method
