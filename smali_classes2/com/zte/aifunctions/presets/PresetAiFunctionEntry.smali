.class public Lcom/zte/aifunctions/presets/PresetAiFunctionEntry;
.super Ljava/lang/Object;
.source "PresetAiFunctionEntry.java"


# instance fields
.field private function_id:Ljava/lang/String;

.field private package_name:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFunction_id()Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/zte/aifunctions/presets/PresetAiFunctionEntry;->function_id:Ljava/lang/String;

    return-object p0
.end method

.method public getPackage_name()[Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/zte/aifunctions/presets/PresetAiFunctionEntry;->package_name:[Ljava/lang/String;

    return-object p0
.end method

.method public setFunction_id(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/zte/aifunctions/presets/PresetAiFunctionEntry;->function_id:Ljava/lang/String;

    return-void
.end method

.method public setPackage_name([Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/zte/aifunctions/presets/PresetAiFunctionEntry;->package_name:[Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AiFunctionEntry{function_id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aifunctions/presets/PresetAiFunctionEntry;->function_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', package_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aifunctions/presets/PresetAiFunctionEntry;->package_name:[Ljava/lang/String;

    .line 27
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
