.class public Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LiveCalenderMainAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$OnItemClickedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private onItemClickedListener:Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$OnItemClickedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->setData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;)Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$OnItemClickedListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->onItemClickedListener:Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$OnItemClickedListener;

    return-object p0
.end method

.method private getDay(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x5

    .line 156
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getWeekDay(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcn/nubia/redmagickyi/main/R$array;->live_calender_days_of_week:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p0

    const/4 p1, 0x7

    .line 161
    invoke-virtual {p2, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private onStatement(Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;Lcn/nubia/redmagickyi/livecalender/util/Statement;)V
    .locals 2

    .line 128
    iget-object v0, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->layoutLeft:Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;

    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->onStatement(Lcn/nubia/redmagickyi/livecalender/util/Statement;)V

    .line 129
    iget-object v0, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->layoutRight:Lcn/nubia/redmagickyi/livecalender/view/RightLayout;

    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/livecalender/view/RightLayout;->onStatement(Lcn/nubia/redmagickyi/livecalender/util/Statement;)V

    .line 130
    iget-object v0, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->rvChild:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;

    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->setStatement(Lcn/nubia/redmagickyi/livecalender/util/Statement;)V

    .line 131
    sget-object v0, Lcn/nubia/redmagickyi/livecalender/util/Statement;->EXPIRED:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    if-ne p2, v0, :cond_0

    .line 132
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->ivBackground:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->livecalender_cardbg_pass:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object p1, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->viewLine:Landroid/view/View;

    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcn/nubia/redmagickyi/main/R$drawable;->livecalender_item_dash_line_pass_vertical:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 134
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/livecalender/util/Statement;->NOW:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    if-ne p2, v0, :cond_1

    .line 135
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->ivBackground:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->livecalender_cardbg_today:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object p1, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->viewLine:Landroid/view/View;

    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcn/nubia/redmagickyi/main/R$drawable;->livecalender_item_dash_line_today_vertical:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 138
    :cond_1
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->ivBackground:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->livecalender_cardbg_normnal:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object p1, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->viewLine:Landroid/view/View;

    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->mContext:Landroid/content/Context;

    sget p2, Lcn/nubia/redmagickyi/main/R$drawable;->livecalender_item_dash_line_normal_vertical:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public decodeFile(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    if-eqz p2, :cond_0

    .line 144
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    const/4 p0, 0x0

    .line 147
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initBitmapOptionsDensity(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 152
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->list:Ljava/util/List;

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

    .line 26
    check-cast p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;I)V

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

    .line 26
    check-cast p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;I)V
    .locals 7

    .line 69
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;

    .line 70
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 71
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 72
    iget-object v2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->tvDay:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->getDay(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->tvWeek:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, v1}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->getWeekDay(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->rvChild:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;

    iget-object v2, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 78
    move-object v2, v1

    check-cast v2, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;

    new-instance v2, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$1;

    invoke-direct {v2, p0, p2, v0}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$1;-><init>(Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;ILcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;)V

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->setOnItemClickedListener(Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter$OnItemClickedListener;)V

    .line 84
    iget-object v2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->rvChild:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 86
    :cond_0
    check-cast v1, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->setData(Ljava/util/List;)V

    .line 87
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderChildAdapter;->notifyDataSetChanged()V

    .line 90
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->onItemClickedListener:Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$OnItemClickedListener;

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$2;

    invoke-direct {v2, p0, p2, v0}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$2;-><init>(Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;ILcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getStatement()Lcn/nubia/redmagickyi/livecalender/util/Statement;

    move-result-object p2

    sget-object v1, Lcn/nubia/redmagickyi/livecalender/util/Statement;->EXPIRED:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    if-ne p2, v1, :cond_2

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getBgImageGrayPath()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getBgImagePath()Ljava/lang/String;

    move-result-object p2

    .line 100
    :goto_1
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getStatement()Lcn/nubia/redmagickyi/livecalender/util/Statement;

    move-result-object v1

    sget-object v2, Lcn/nubia/redmagickyi/livecalender/util/Statement;->EXPIRED:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getProfileImageGrayPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getProfileImagePath()Ljava/lang/String;

    move-result-object v1

    .line 101
    :goto_2
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getStatement()Lcn/nubia/redmagickyi/livecalender/util/Statement;

    move-result-object v2

    sget-object v3, Lcn/nubia/redmagickyi/livecalender/util/Statement;->EXPIRED:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    if-ne v2, v3, :cond_4

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getBgImageGrayBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getBgImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 102
    :goto_3
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getStatement()Lcn/nubia/redmagickyi/livecalender/util/Statement;

    move-result-object v3

    sget-object v4, Lcn/nubia/redmagickyi/livecalender/util/Statement;->EXPIRED:Lcn/nubia/redmagickyi/livecalender/util/Statement;

    if-ne v3, v4, :cond_5

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getProfileImageGrayBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getProfileImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 103
    :goto_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_7

    .line 104
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_6

    .line 105
    iget-object v4, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->layoutLeft:Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;

    invoke-virtual {v4, v6}, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->setNeedBackgroundColor(Z)V

    .line 106
    iget-object v4, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->ivLeftBg:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p2, v2}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->decodeFile(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {v5, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 107
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->ivLeftFg:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v3}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->decodeFile(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5

    .line 109
    :cond_6
    iget-object v1, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->layoutLeft:Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;

    invoke-virtual {v1, v6}, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->setNeedBackgroundColor(Z)V

    .line 110
    iget-object v1, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->ivLeftBg:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p2, v2}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->decodeFile(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {v3, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->ivLeftFg:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5

    .line 114
    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v2, 0x1

    if-nez p2, :cond_8

    .line 115
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->layoutLeft:Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;

    invoke-virtual {p2, v2}, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->setNeedBackgroundColor(Z)V

    .line 116
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->ivLeftBg:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->ivLeftFg:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v3}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->decodeFile(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5

    .line 119
    :cond_8
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->layoutLeft:Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;

    invoke-virtual {p2, v2}, Lcn/nubia/redmagickyi/livecalender/view/LeftLayout;->setNeedBackgroundColor(Z)V

    .line 120
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->ivLeftBg:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object p2, p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;->ivLeftFg:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    :goto_5
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;->getStatement()Lcn/nubia/redmagickyi/livecalender/util/Statement;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->onStatement(Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;Lcn/nubia/redmagickyi/livecalender/util/Statement;)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;I)V

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

    .line 26
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;
    .locals 1

    .line 55
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$layout;->livecalender_item_main:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 56
    new-instance p1, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/livecalender/viewholder/LiveCalenderMainViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;",
            ">;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->list:Ljava/util/List;

    .line 48
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 49
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setOnItemClickedListener(Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$OnItemClickedListener;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter;->onItemClickedListener:Lcn/nubia/redmagickyi/livecalender/adapter/LiveCalenderMainAdapter$OnItemClickedListener;

    return-void
.end method
