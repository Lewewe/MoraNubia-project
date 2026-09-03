.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter$1;
.super Ljava/lang/Object;
.source "WallPaperHubInspiredAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;

.field final synthetic val$bean:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter$1;->val$bean:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 99
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter$1;->val$bean:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;->isLocked()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 103
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter$1;->val$bean:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;->access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/adapter/WallPaperHubInspiredAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;->onItemClick(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_1
    return-void
.end method
