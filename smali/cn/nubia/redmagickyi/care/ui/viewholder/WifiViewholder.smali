.class public Lcn/nubia/redmagickyi/care/ui/viewholder/WifiViewholder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WifiViewholder.java"


# instance fields
.field public wifi_name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 14
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 15
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->wifi_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/care/ui/viewholder/WifiViewholder;->wifi_name:Landroid/widget/TextView;

    return-void
.end method
