.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter$1;
.super Ljava/lang/Object;
.source "WallPaperHubStaticsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/WallPaperHubViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;

.field final synthetic val$bean:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;)V
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

    .line 84
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter$1;->val$bean:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 87
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter$1;->val$bean:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/network/bean/StaticsBean;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;->access$100(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/adapter/WallPaperHubStaticsAdapter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;->onItemClick(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method
