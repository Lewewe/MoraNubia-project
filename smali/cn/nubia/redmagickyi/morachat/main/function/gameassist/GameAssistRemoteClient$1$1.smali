.class Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$1$1;
.super Ljava/lang/Object;
.source "GameAssistRemoteClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$1;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$1;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$1;->val$featureGetter:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$FeatureGetter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$1;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$1;

    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$1;->val$feature:I

    invoke-static {v1, p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;->access$400(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient;I)Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature;

    move-result-object p0

    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/GameAssistRemoteClient$FeatureGetter;->get(Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/IFeature;)V

    return-void
.end method
