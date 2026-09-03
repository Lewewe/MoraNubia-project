.class public Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LiveCalenderChildAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter$OnItemClickedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private onItemClickedListener:Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter$OnItemClickedListener;

.field private statement:Lcn/nubia/redmagickyi/livecalender/util/Statement;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->setData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;)Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter$OnItemClickedListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->onItemClickedListener:Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter$OnItemClickedListener;

    return-object p0
.end method

.method private onStatement(Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;Lcn/nubia/redmagickyi/livecalender/util/Statement;)V
    .locals 2

    .line 113
    iget-object v0, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->layoutContent:Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;

    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/livecalender/view/ContentLayout;->onStatement(Lcn/nubia/redmagickyi/livecalender/util/Statement;)V

    .line 114
    sget-object v0, Lcn/nubia/redmagickyi/livecalender/util/Statement;->EXPIRED:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    if-ne p2, v0, :cond_0

    .line 115
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->tvTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->gray_9955535D:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->gray_9955535D:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->tvContent:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->gray_9955535D:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->tvAddress:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->gray_9955535D:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->tvAddress:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->gray_4D55535D:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 120
    iget-object p1, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->viewLine:Landroid/view/View;

    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcn/nubia/redmagickyi/main/R$drawable;->livecalender_item_dash_line_pass:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 121
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/livecalender/util/Statement;->NOW:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    if-ne p2, v0, :cond_1

    .line 122
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->tvTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->red_FFF76666:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->red_FFF76666:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->tvContent:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->red_FFF76666:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->tvAddress:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->red_FFF76666:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->tvAddress:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->red_4DF76666:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 127
    iget-object p1, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->viewLine:Landroid/view/View;

    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcn/nubia/redmagickyi/main/R$drawable;->livecalender_item_dash_line_today:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->tvTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->purple_D94E3DA5:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->purple_D94E3DA5:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->tvContent:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->purple_D94E3DA5:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->tvAddress:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->purple_D94E3DA5:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->tvAddress:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->purple_4D9D9BFF:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 134
    iget-object p1, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->viewLine:Landroid/view/View;

    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcn/nubia/redmagickyi/main/R$drawable;->livecalender_item_dash_line_normal:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 109
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 23
    check-cast p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 23
    check-cast p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;I)V
    .locals 7

    .line 74
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;

    .line 75
    iget-object v1, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->tvTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->getBeginTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->getEndTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v1, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_0
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 83
    iget-object v0, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->tvAddress:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v0, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->layoutContentMarginTop:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 86
    :cond_1
    iget-object v1, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->tvAddress:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v1, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->tvAddress:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->mContext:Landroid/content/Context;

    sget v6, Lcn/nubia/redmagickyi/main/R$string;->live_calender_address:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->layoutContentMarginTop:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_2

    .line 91
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->viewLine:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 93
    :cond_2
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->viewLine:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :goto_2
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter$1;-><init>(Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object p2, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->statement:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->onStatement(Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;Lcn/nubia/redmagickyi/livecalender/util/Statement;)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 68
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;I)V

    :cond_0
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

    .line 23
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;
    .locals 1

    .line 60
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$layout;->livecalender_item_child:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 61
    new-instance p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderChildViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate$LiveActivity;",
            ">;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->list:Ljava/util/List;

    .line 46
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 47
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setOnItemClickedListener(Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter$OnItemClickedListener;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->onItemClickedListener:Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter$OnItemClickedListener;

    return-void
.end method

.method public setStatement(Lcn/nubia/redmagickyi/livecalender/util/Statement;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->statement:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    if-eq p1, v0, :cond_0

    .line 52
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->statement:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    .line 53
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
