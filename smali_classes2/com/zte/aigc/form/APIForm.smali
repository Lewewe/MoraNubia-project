.class public Lcom/zte/aigc/form/APIForm;
.super Ljava/lang/Object;
.source "APIForm.java"


# instance fields
.field private cloud_session:Ljava/lang/String;

.field private cloud_token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCloud_session()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/zte/aigc/form/APIForm;->cloud_session:Ljava/lang/String;

    return-object p0
.end method

.method public getCloud_token()Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/zte/aigc/form/APIForm;->cloud_token:Ljava/lang/String;

    return-object p0
.end method

.method public setCloud_session(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/zte/aigc/form/APIForm;->cloud_session:Ljava/lang/String;

    return-void
.end method

.method public setCloud_token(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/zte/aigc/form/APIForm;->cloud_token:Ljava/lang/String;

    return-void
.end method

.method public validate()V
    .locals 0

    return-void
.end method
