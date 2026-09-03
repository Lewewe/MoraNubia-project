.class public Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ModelImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ClickInterface;,
        Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ModelImageAdapter"


# instance fields
.field private clickInterface:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ClickInterface;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isEnable:Z

.field private mContext:Landroid/content/Context;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/Context;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->isEnable:Z

    .line 33
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->datas:Ljava/util/List;

    .line 34
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;)Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ClickInterface;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->clickInterface:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ClickInterface;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->datas:Ljava/util/List;

    return-object p0
.end method

.method private getThumbnailBySkinId(I)I
    .locals 0

    const/16 p0, 0x3e8

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 187
    :pswitch_0
    sget p0, Lcn/nubia/redmagickyi/main/R$drawable;->ar_image_3d_samurai_selector:I

    return p0

    .line 185
    :pswitch_1
    sget p0, Lcn/nubia/redmagickyi/main/R$drawable;->ar_image_3d_carton_selector:I

    return p0

    .line 183
    :pswitch_2
    sget p0, Lcn/nubia/redmagickyi/main/R$drawable;->ar_image_3d_qipao_selector:I

    return p0

    .line 181
    :pswitch_3
    sget p0, Lcn/nubia/redmagickyi/main/R$drawable;->ar_image_3d_timetravel_selector:I

    return p0

    .line 189
    :cond_0
    sget p0, Lcn/nubia/redmagickyi/main/R$drawable;->ar_image_2d_demi_selector:I

    return p0

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDatas()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->datas:Ljava/util/List;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 156
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->datas:Ljava/util/List;

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

    .line 24
    check-cast p1, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;I)V

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

    .line 24
    check-cast p1, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;I)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->datas:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->datas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 74
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;->access$000(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->getThumbnailBySkinId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 75
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->getCurrentSkin()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->isEnable:Z

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p1, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;->image_select:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v1, p1, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;->image_select:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    :goto_0
    iget-object v1, p1, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;

    invoke-direct {v2, p0, p2, v0}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$1;-><init>(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    iget-object v0, p1, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$2;

    invoke-direct {v1, p0, p2, p1}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$2;-><init>(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;ILcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 58
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 59
    const-string v1, "playing"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 60
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->datas:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 61
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->getCurrentSkin()I

    move-result p2

    if-ne p2, p0, :cond_1

    .line 62
    iget-object p0, p1, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;->image_select:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 64
    :cond_1
    iget-object p0, p1, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;->image_select:Landroid/widget/TextView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
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

    .line 24
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;
    .locals 3

    .line 50
    new-instance p2, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$layout;->morachat_fs_chat_item_model:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ViewHolder;-><init>(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setClickInterface(Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ClickInterface;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->clickInterface:Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter$ClickInterface;

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->isEnable:Z

    .line 44
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/adapter/ModelImageAdapter;->notifyDataSetChanged()V

    return-void
.end method
