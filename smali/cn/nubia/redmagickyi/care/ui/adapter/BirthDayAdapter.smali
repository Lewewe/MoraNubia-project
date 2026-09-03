.class public Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BirthDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter$ViewHolder;,
        Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter$LayoutGravity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final GRAVITY_CENTER:I = 0x0

.field public static final GRAVITY_LEFT:I = 0x1

.field public static final GRAVITY_RIGHT:I = 0x2


# instance fields
.field private context:Landroid/content/Context;

.field private layoutGravity:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;->setData(Ljava/util/List;)V

    .line 37
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;->context:Landroid/content/Context;

    .line 38
    iput p3, p0, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;->layoutGravity:I

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;)I
    .locals 0

    .line 22
    iget p0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;->layoutGravity:I

    return p0
.end method


# virtual methods
.method public findTextView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 0

    .line 97
    sget p0, Lcn/nubia/redmagickyi/main/R$id;->tv_birth:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public getCurrentSelecetedPosition(I)I
    .locals 2

    .line 74
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;->getRealItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;->getRealItemCount()I

    move-result p0

    rem-int/2addr p1, p0

    :goto_0
    return p1
.end method

.method public getItemCount()I
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;->getRealItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;->getRealItemCount()I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x7fff

    :goto_0
    return p0
.end method

.method public getLayoutGravity()I
    .locals 0

    .line 70
    iget p0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;->layoutGravity:I

    return p0
.end method

.method public getRealItemCount()I
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;->list:Ljava/util/List;

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

    .line 22
    check-cast p1, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter$ViewHolder;I)V
    .locals 1

    .line 66
    invoke-static {p1}, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter$ViewHolder;->access$000(Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;->list:Ljava/util/List;

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;->getCurrentSelecetedPosition(I)I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    .line 22
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter$ViewHolder;
    .locals 3

    .line 52
    new-instance p2, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter$ViewHolder;

    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$layout;->item_care_birth:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter$ViewHolder;-><init>(Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;->list:Ljava/util/List;

    .line 45
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 46
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/ui/adapter/BirthDayAdapter;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
