.class Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$1;
.super Ljava/lang/Object;
.source "DanceStudioListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;I)V
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

    .line 79
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;

    iput p2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$1;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;->access$200(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter;)Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$OnItemCallback;

    move-result-object v0

    iget p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$1;->val$position:I

    invoke-interface {v0, p1, p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/adapter/DanceStudioListAdapter$OnItemCallback;->onItemClick(Landroid/view/View;I)V

    return-void
.end method
