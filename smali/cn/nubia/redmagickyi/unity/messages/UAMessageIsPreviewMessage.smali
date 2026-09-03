.class public Lcn/nubia/redmagickyi/unity/messages/UAMessageIsPreviewMessage;
.super Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;
.source "UAMessageIsPreviewMessage.java"


# instance fields
.field private isPreview:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageIsPreviewMessage;->isPreview:Z

    return-void
.end method


# virtual methods
.method public isPreview()Z
    .locals 0

    .line 7
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageIsPreviewMessage;->isPreview:Z

    return p0
.end method

.method public setPreview(Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageIsPreviewMessage;->isPreview:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UAMessageIsPreviewMessage{isPreview="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageIsPreviewMessage;->isPreview:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageIsPreviewMessage;->msgID:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
