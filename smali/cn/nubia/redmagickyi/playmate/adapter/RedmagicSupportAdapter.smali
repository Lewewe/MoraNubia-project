.class public Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RedmagicSupportAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$RedmagicSupportInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicSupportViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private clickInterface:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$RedmagicSupportInterface;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;",
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
            "Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$RedmagicSupportInterface;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;->clickInterface:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$RedmagicSupportInterface;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;->list:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 110
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;->list:Ljava/util/List;

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
    check-cast p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicSupportViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicSupportViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicSupportViewHolder;I)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;

    .line 56
    iget-object v1, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicSupportViewHolder;->tvGame:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getGame()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicSupportViewHolder;->cbGame:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    new-instance v2, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$1;

    invoke-direct {v2, p0, p2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$1;-><init>(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;I)V

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 70
    iget-object v1, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicSupportViewHolder;->cbGame:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    new-instance v2, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$2;

    invoke-direct {v2, p0, v0, p2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$2;-><init>(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;I)V

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 80
    iget-object v1, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicSupportViewHolder;->cbGame:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->isPluginEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->setActivated(Z)V

    .line 81
    iget-object v1, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicSupportViewHolder;->cbGame:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->isGameChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->setChecked(Z)V

    .line 82
    iget-object v1, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicSupportViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$3;

    invoke-direct {v2, p0, v0, p2, p1}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$3;-><init>(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;ILcn/nubia/redmagickyi/playmate/viewholder/RedmagicSupportViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object p0, p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicSupportViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->isFocused()Z

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
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicSupportViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicSupportViewHolder;
    .locals 1

    .line 47
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$layout;->redmagic_support_game_item:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 48
    new-instance p1, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicSupportViewHolder;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicSupportViewHolder;-><init>(Landroid/view/View;)V

    .line 49
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicSupportViewHolder;->setIsRecyclable(Z)V

    return-object p1
.end method

.method public setRedmagicSupportItemOnclick(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$RedmagicSupportInterface;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;->clickInterface:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$RedmagicSupportInterface;

    return-void
.end method
