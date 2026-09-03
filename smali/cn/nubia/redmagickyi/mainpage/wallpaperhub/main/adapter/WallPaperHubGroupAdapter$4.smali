.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$4;
.super Ljava/lang/Object;
.source "WallPaperHubGroupAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;

.field final synthetic val$holder:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;

.field final synthetic val$viewType:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;ILcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$4;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;

    iput p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$4;->val$viewType:I

    iput-object p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$4;->val$holder:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 209
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$4;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;

    move-result-object p1

    iget v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$4;->val$viewType:I

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$4;->val$holder:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;

    iget-object v1, v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/viewholder/BaseWallPaperHubGroupViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$4;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;->access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, v0, v1, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/adapter/WallPaperHubGroupAdapter$ItemClickInterface;->onMoreClick(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method
