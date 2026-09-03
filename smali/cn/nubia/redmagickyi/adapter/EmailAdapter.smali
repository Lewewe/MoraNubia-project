.class public Lcn/nubia/redmagickyi/adapter/EmailAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "EmailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/adapter/EmailAdapter$EmailClickInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/viewholder/EmailViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field bean:Lcn/nubia/redmagickyi/network/bean/EmailBean;

.field private clickInterface:Lcn/nubia/redmagickyi/adapter/EmailAdapter$EmailClickInterface;

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/bean/EmailBean;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field selectPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/bean/EmailBean;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcn/nubia/redmagickyi/adapter/EmailAdapter;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/adapter/EmailAdapter;->updateList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/adapter/EmailAdapter;)Lcn/nubia/redmagickyi/adapter/EmailAdapter$EmailClickInterface;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/redmagickyi/adapter/EmailAdapter;->clickInterface:Lcn/nubia/redmagickyi/adapter/EmailAdapter$EmailClickInterface;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 87
    iget-object p0, p0, Lcn/nubia/redmagickyi/adapter/EmailAdapter;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getSelectPosition()I
    .locals 0

    .line 49
    iget p0, p0, Lcn/nubia/redmagickyi/adapter/EmailAdapter;->selectPosition:I

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

    .line 17
    check-cast p1, Lcn/nubia/redmagickyi/viewholder/EmailViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/adapter/EmailAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/viewholder/EmailViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/viewholder/EmailViewHolder;I)V
    .locals 4

    .line 62
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/EmailAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/network/bean/EmailBean;

    .line 63
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/EmailViewHolder;->tvMailTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->getPublishTime()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 65
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    :cond_0
    iget-object v2, p1, Lcn/nubia/redmagickyi/viewholder/EmailViewHolder;->tvMailDate:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, p1, Lcn/nubia/redmagickyi/viewholder/EmailViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcn/nubia/redmagickyi/adapter/EmailAdapter$1;

    invoke-direct {v2, p0, p2}, Lcn/nubia/redmagickyi/adapter/EmailAdapter$1;-><init>(Lcn/nubia/redmagickyi/adapter/EmailAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/bean/EmailBean;->isRead()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 79
    iget-object p0, p1, Lcn/nubia/redmagickyi/viewholder/EmailViewHolder;->tvMailIcon:Landroid/widget/ImageView;

    sget p1, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_mojitongxun_mailyidu:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object p0, p1, Lcn/nubia/redmagickyi/viewholder/EmailViewHolder;->tvMailIcon:Landroid/widget/ImageView;

    sget p1, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_mojitongxun_mailweidu:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

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

    .line 17
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/adapter/EmailAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/viewholder/EmailViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/viewholder/EmailViewHolder;
    .locals 1

    .line 55
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$layout;->email_item:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 56
    new-instance p1, Lcn/nubia/redmagickyi/viewholder/EmailViewHolder;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/viewholder/EmailViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setEmailItemOnclick(Lcn/nubia/redmagickyi/adapter/EmailAdapter$EmailClickInterface;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcn/nubia/redmagickyi/adapter/EmailAdapter;->clickInterface:Lcn/nubia/redmagickyi/adapter/EmailAdapter$EmailClickInterface;

    return-void
.end method

.method public updateList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/network/bean/EmailBean;",
            ">;)V"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/EmailAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/adapter/EmailAdapter;->list:Ljava/util/List;

    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    if-eqz p1, :cond_1

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/adapter/EmailAdapter;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method
