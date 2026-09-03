.class public Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RedmagicBroadcastGameAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$RedmagicBroadcastGameInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastGameViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private clickInterface:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$RedmagicBroadcastGameInterface;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$RedmagicBroadcastGameInterface;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;->clickInterface:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$RedmagicBroadcastGameInterface;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;->list:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 100
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 24
    check-cast p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastGameViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastGameViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastGameViewHolder;I)V
    .locals 3

    .line 53
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;

    .line 54
    iget-object v1, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastGameViewHolder;->tvGame:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->getGame()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastGameViewHolder;->cbGame:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    new-instance v2, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$1;

    invoke-direct {v2, p0, p2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$1;-><init>(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;I)V

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 68
    iget-object v1, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastGameViewHolder;->cbGame:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    new-instance v2, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$2;

    invoke-direct {v2, p0, v0, p2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$2;-><init>(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;I)V

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 78
    iget-object v1, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastGameViewHolder;->cbGame:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->isPluginEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->setActivated(Z)V

    .line 79
    iget-object v1, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastGameViewHolder;->cbGame:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->setChecked(Z)V

    .line 80
    iget-object v1, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastGameViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$3;

    invoke-direct {v2, p0, v0, p2, p1}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$3;-><init>(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;ILcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastGameViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object p0, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastGameViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->isFocused()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

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
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastGameViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastGameViewHolder;
    .locals 1

    .line 46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$layout;->redmagic_broadcast_game_item:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 47
    new-instance p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastGameViewHolder;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastGameViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setRedmagicBroadcastGameItemOnclick(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$RedmagicBroadcastGameInterface;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;->clickInterface:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$RedmagicBroadcastGameInterface;

    return-void
.end method
