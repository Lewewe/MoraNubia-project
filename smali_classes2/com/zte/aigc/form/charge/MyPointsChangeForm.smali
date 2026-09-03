.class public Lcom/zte/aigc/form/charge/MyPointsChangeForm;
.super Lcom/zte/aigc/form/PageForm;
.source "MyPointsChangeForm.java"


# instance fields
.field private changeType:Lcom/zte/aigc/common/ChangeTypeEnum;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/zte/aigc/form/PageForm;-><init>()V

    return-void
.end method


# virtual methods
.method public getChangeType()Lcom/zte/aigc/common/ChangeTypeEnum;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/zte/aigc/form/charge/MyPointsChangeForm;->changeType:Lcom/zte/aigc/common/ChangeTypeEnum;

    return-object p0
.end method

.method public setChangeType(Lcom/zte/aigc/common/ChangeTypeEnum;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/zte/aigc/form/charge/MyPointsChangeForm;->changeType:Lcom/zte/aigc/common/ChangeTypeEnum;

    return-void
.end method
