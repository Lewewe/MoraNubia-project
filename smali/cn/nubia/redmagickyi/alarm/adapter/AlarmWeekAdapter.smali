.class public Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AlarmWeekAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter$AlarmWeekClickInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/alarm/viewholder/AlarmWeekViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private clickInterface:Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter$AlarmWeekClickInterface;

.field private context:Landroid/content/Context;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;->datas:Ljava/util/List;

    .line 35
    iput-object p2, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;)Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter$AlarmWeekClickInterface;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;->clickInterface:Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter$AlarmWeekClickInterface;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 76
    iget-object p0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;->datas:Ljava/util/List;

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

    .line 19
    check-cast p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmWeekViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/alarm/viewholder/AlarmWeekViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/alarm/viewholder/AlarmWeekViewHolder;I)V
    .locals 4

    .line 48
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;->datas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;

    .line 49
    iget-object v1, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmWeekViewHolder;->week:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;->getWeek()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/alarm/beans/AlarmWeekBeans;->isCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmWeekViewHolder;->bg:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;->context:Landroid/content/Context;

    sget v2, Lcn/nubia/redmagickyi/main/R$drawable;->alarm_week_item_select_bg:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 53
    iget-object v0, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmWeekViewHolder;->week:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;->context:Landroid/content/Context;

    sget v2, Lcn/nubia/redmagickyi/main/R$color;->white_FFFFFFFF:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmWeekViewHolder;->bg:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;->context:Landroid/content/Context;

    sget v2, Lcn/nubia/redmagickyi/main/R$drawable;->alarm_week_item_bg:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 56
    iget-object v0, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmWeekViewHolder;->week:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;->context:Landroid/content/Context;

    sget v2, Lcn/nubia/redmagickyi/main/R$color;->alarm_FF867AF7:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    :goto_0
    iget-object v0, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmWeekViewHolder;->week:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmWeekViewHolder;->week:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 59
    iget-object v0, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmWeekViewHolder;->week:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_11_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 61
    :cond_1
    iget-object v0, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmWeekViewHolder;->week:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_15_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 63
    :goto_1
    iget-object p1, p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmWeekViewHolder;->bg:Landroid/widget/RelativeLayout;

    new-instance v0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter$1;

    invoke-direct {v0, p0, p2}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter$1;-><init>(Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
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

    .line 19
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/alarm/viewholder/AlarmWeekViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/alarm/viewholder/AlarmWeekViewHolder;
    .locals 1

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$layout;->alarm_week_item_view:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 42
    new-instance p1, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmWeekViewHolder;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/alarm/viewholder/AlarmWeekViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setAlarmWeekCheck(Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter$AlarmWeekClickInterface;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;->clickInterface:Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter$AlarmWeekClickInterface;

    return-void
.end method
