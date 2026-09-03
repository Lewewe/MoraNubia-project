.class public Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "WifiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter$WifiClickInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "WifiAdapter"


# instance fields
.field private clickInterface:Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter$WifiClickInterface;

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter;)Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter$WifiClickInterface;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter;->clickInterface:Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter$WifiClickInterface;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 3

    .line 71
    sget-object v0, Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getItemCount():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    instance-of v0, p1, Lcn/nubia/redmagickyi/care/ui/viewholder/WifiViewholder;

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter;->TAG:Ljava/lang/String;

    const-string v1, "onBindViewHolder():"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    move-object v0, p1

    check-cast v0, Lcn/nubia/redmagickyi/care/ui/viewholder/WifiViewholder;

    .line 55
    iget-object v0, v0, Lcn/nubia/redmagickyi/care/ui/viewholder/WifiViewholder;->wifi_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter$1;

    invoke-direct {v0, p0, p2}, Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter$1;-><init>(Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$layout;->wifi_item:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 44
    new-instance p1, Lcn/nubia/redmagickyi/care/ui/viewholder/WifiViewholder;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/care/ui/viewholder/WifiViewholder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setActionItemOnclick(Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter$WifiClickInterface;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter;->clickInterface:Lcn/nubia/redmagickyi/care/ui/adapter/WifiAdapter$WifiClickInterface;

    return-void
.end method
