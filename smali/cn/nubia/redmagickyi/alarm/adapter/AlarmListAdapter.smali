.class public Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AlarmListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter$AlarmSwitchClickInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private clickInterface:Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter$AlarmSwitchClickInterface;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;->datas:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;)Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter$AlarmSwitchClickInterface;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;->clickInterface:Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter$AlarmSwitchClickInterface;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 101
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;->datas:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 23
    check-cast p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;I)V
    .locals 6

    .line 53
    const-string v0, "HH:mm"

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;->datas:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;

    .line 55
    :try_start_0
    iget-object v2, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;->time:Landroid/widget/TextView;

    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    iget-object v0, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;->imTag:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_type()I

    move-result v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getAlarmTypeImage(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getRepeat_type()I

    move-result v0

    sget v2, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->RING_CUSTOM:I

    if-ne v0, v2, :cond_0

    .line 62
    iget-object v0, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;->repeat_model:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getRepeat_week()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->getWeekDay(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;->repeat_model:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$string;->alarm_ring_one_time:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :goto_0
    sget v0, Lcn/nubia/redmagickyi/alarm/utils/AlarmUtils;->SWITCH_ON:I

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/alarm/beans/AlarmBeans;->getAlarm_switch()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 67
    iget-object v0, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;->aSwitch:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    .line 68
    iget-object v0, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;->listBg:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcn/nubia/redmagickyi/main/R$drawable;->alarm_list_select_bg:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 70
    :cond_1
    iget-object v0, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;->aSwitch:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setChecked(Z)V

    .line 71
    iget-object v0, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;->listBg:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcn/nubia/redmagickyi/main/R$drawable;->alarm_list_unselect_bg:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 73
    :goto_1
    iget-object v0, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;->aSwitch:Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    new-instance v1, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter$1;-><init>(Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;I)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 89
    iget-object p1, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter$2;

    invoke-direct {v0, p0, p2}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter$2;-><init>(Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catch_0
    move-exception p0

    .line 57
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;
    .locals 1

    .line 46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$layout;->alarm_list_item_layout:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 47
    new-instance p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmListViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setAlarmOnClickListener(Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter$AlarmSwitchClickInterface;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter;->clickInterface:Lcn/nubia/redmagickyi/alarm/adapter/AlarmListAdapter$AlarmSwitchClickInterface;

    return-void
.end method
