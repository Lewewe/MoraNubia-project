.class public Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NewMyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$WifiClickInterface;,
        Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$MyHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$MyHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private TYPE_FOOTER:I

.field private TYPE_HEADER:I

.field private TYPE_NORMAL:I

.field private VIEW_FOOTER:Landroid/view/View;

.field private VIEW_HEADER:Landroid/view/View;

.field private clickInterface:Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$WifiClickInterface;

.field curWifi:Ljava/lang/String;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field wifiCheck:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x3e8

    .line 34
    iput v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->TYPE_NORMAL:I

    const/16 v0, 0x3e9

    .line 35
    iput v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->TYPE_HEADER:I

    const/16 v0, 0x3ea

    .line 36
    iput v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->TYPE_FOOTER:I

    .line 51
    iput-object p2, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->list:Ljava/util/List;

    .line 52
    iput-object p3, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->curWifi:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;)Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$WifiClickInterface;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->clickInterface:Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$WifiClickInterface;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;)Landroid/view/View;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->VIEW_HEADER:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;I)Z
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->isHeaderView(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;I)Z
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->isFooterView(I)Z

    move-result p0

    return p0
.end method

.method private getLayout(I)Landroid/view/View;
    .locals 1

    .line 168
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private haveHeaderView()Z
    .locals 0

    .line 217
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->VIEW_HEADER:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private ifGridLayoutManager()V
    .locals 3

    .line 198
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 201
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 202
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_1

    .line 203
    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 204
    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 205
    new-instance v2, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$4;

    invoke-direct {v2, p0, v0}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$4;-><init>(Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_1
    return-void
.end method

.method private isFooterView(I)Z
    .locals 1

    .line 229
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->haveFooterView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->getItemCount()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isHeaderView(I)Z
    .locals 0

    .line 225
    invoke-direct {p0}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->haveHeaderView()Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 3

    .line 186
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->haveFooterView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 190
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->VIEW_FOOTER:Landroid/view/View;

    .line 192
    invoke-direct {p0}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->ifGridLayoutManager()V

    .line 193
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->notifyItemInserted(I)V

    return-void

    .line 187
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "footerView has already exists!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 3

    .line 172
    invoke-direct {p0}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->haveHeaderView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x78

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 177
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->VIEW_HEADER:Landroid/view/View;

    .line 179
    invoke-direct {p0}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->ifGridLayoutManager()V

    const/4 p1, 0x0

    .line 180
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->notifyItemInserted(I)V

    return-void

    .line 173
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "hearview has already exists!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getItemCount()I
    .locals 2

    .line 133
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 134
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->VIEW_FOOTER:Landroid/view/View;

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 138
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->VIEW_HEADER:Landroid/view/View;

    if-eqz p0, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 146
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->isHeaderView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget p0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->TYPE_HEADER:I

    return p0

    .line 148
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->isFooterView(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 149
    iget p0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->TYPE_FOOTER:I

    return p0

    .line 151
    :cond_1
    iget p0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->TYPE_NORMAL:I

    return p0
.end method

.method public haveFooterView()Z
    .locals 0

    .line 221
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->VIEW_FOOTER:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 159
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 161
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->ifGridLayoutManager()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 163
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
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
    check-cast p1, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$MyHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$MyHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$MyHolder;I)V
    .locals 4

    .line 69
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->isHeaderView(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->isFooterView(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 70
    invoke-direct {p0}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->haveHeaderView()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 73
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 74
    iget-object v0, p1, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$MyHolder;->itemView:Landroid/view/View;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->wifi_name:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 76
    iget-object v2, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p1, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$MyHolder;->itemView:Landroid/view/View;

    sget v2, Lcn/nubia/redmagickyi/main/R$id;->wifi_cheeck:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->wifiCheck:Landroid/widget/ImageView;

    .line 79
    new-instance v2, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$1;

    invoke-direct {v2, p0, p2}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$1;-><init>(Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->curWifi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->curWifi:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->getWiFiName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->wifiCheck:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->wifiCheck:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$drawable;->svg_checkbox_on:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->wifiCheck:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->wifiCheck:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$drawable;->svg_checkbox_off:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->VIEW_HEADER:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 98
    sget v2, Lcn/nubia/redmagickyi/main/R$id;->none:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 99
    new-instance v2, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$2;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$2;-><init>(Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v2, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->VIEW_HEADER:Landroid/view/View;

    sget v3, Lcn/nubia/redmagickyi/main/R$id;->wifi_none:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 108
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 109
    iget-object v2, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->curWifi:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v1, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$drawable;->svg_checkbox_on:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v1, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$drawable;->svg_checkbox_off:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 119
    :cond_4
    :goto_0
    iget-object p1, p1, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$MyHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$3;

    invoke-direct {v0, p0, p2}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$3;-><init>(Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$MyHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$MyHolder;
    .locals 0

    .line 58
    iget p1, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->TYPE_FOOTER:I

    if-ne p2, p1, :cond_0

    .line 59
    new-instance p1, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$MyHolder;

    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->VIEW_FOOTER:Landroid/view/View;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$MyHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 60
    :cond_0
    iget p1, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->TYPE_HEADER:I

    if-ne p2, p1, :cond_1

    .line 61
    new-instance p1, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$MyHolder;

    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->VIEW_HEADER:Landroid/view/View;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$MyHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 63
    :cond_1
    new-instance p1, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$MyHolder;

    sget p2, Lcn/nubia/redmagickyi/main/R$layout;->wifi_item:I

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->getLayout(I)Landroid/view/View;

    move-result-object p0

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$MyHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setActionItemOnclick(Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$WifiClickInterface;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter;->clickInterface:Lcn/nubia/redmagickyi/care/ui/adapter/NewMyAdapter$WifiClickInterface;

    return-void
.end method
