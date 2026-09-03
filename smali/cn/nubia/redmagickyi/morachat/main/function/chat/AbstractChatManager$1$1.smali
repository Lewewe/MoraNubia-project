.class Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$1$1;
.super Ljava/lang/Object;
.source "AbstractChatManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$1;

.field final synthetic val$dbList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$1;Ljava/util/List;)V
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

    .line 167
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$1;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$1$1;->val$dbList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$1$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$1;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$1;->val$onMessagesQueryListener:Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$OnMessagesQueryListener;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$1$1;->val$dbList:Ljava/util/List;

    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager$OnMessagesQueryListener;->onCompleted(Ljava/util/List;)V

    return-void
.end method
