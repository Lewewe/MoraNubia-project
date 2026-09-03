.class public Lcom/zte/aifunctions/metadata/entry/MetaData;
.super Ljava/lang/Object;
.source "MetaData.java"


# instance fields
.field private available:Z

.field private functionKey:Ljava/lang/String;

.field private launchAction:Ljava/lang/String;

.field private launchFlags:I

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFunctionKey()Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/zte/aifunctions/metadata/entry/MetaData;->functionKey:Ljava/lang/String;

    return-object p0
.end method

.method public getLaunchAction()Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/zte/aifunctions/metadata/entry/MetaData;->launchAction:Ljava/lang/String;

    return-object p0
.end method

.method public getLaunchFlags()I
    .locals 0

    .line 48
    iget p0, p0, Lcom/zte/aifunctions/metadata/entry/MetaData;->launchFlags:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/zte/aifunctions/metadata/entry/MetaData;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/zte/aifunctions/metadata/entry/MetaData;->available:Z

    return p0
.end method

.method public setAvailable(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/zte/aifunctions/metadata/entry/MetaData;->available:Z

    return-void
.end method

.method public setFunctionKey(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/zte/aifunctions/metadata/entry/MetaData;->functionKey:Ljava/lang/String;

    return-void
.end method

.method public setLaunchAction(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/zte/aifunctions/metadata/entry/MetaData;->launchAction:Ljava/lang/String;

    return-void
.end method

.method public setLaunchFlags(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/zte/aifunctions/metadata/entry/MetaData;->launchFlags:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/zte/aifunctions/metadata/entry/MetaData;->packageName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AiFunctionMetaData{functionKey=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aifunctions/metadata/entry/MetaData;->functionKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', available="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/aifunctions/metadata/entry/MetaData;->available:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aifunctions/metadata/entry/MetaData;->launchAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', launchFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/zte/aifunctions/metadata/entry/MetaData;->launchFlags:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
