.class Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$3;
.super Ljava/lang/Object;
.source "Image2TextSession.java"

# interfaces
.implements Lcom/zte/oss/UpLoadFileController$OnFileUploadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->startExecute(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcom/zte/oss/entry/UploadFile;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

.field final synthetic val$botMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isThePictureFromUser:Z

.field final synthetic val$userMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
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

    .line 188
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$3;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$3;->val$userMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iput-object p4, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$3;->val$botMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iput-boolean p5, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$3;->val$isThePictureFromUser:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 6

    .line 191
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$3;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$3;->val$userMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$3;->val$botMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iget-boolean v5, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$3;->val$isThePictureFromUser:Z

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->access$400(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/String;Z)V

    return-void
.end method
