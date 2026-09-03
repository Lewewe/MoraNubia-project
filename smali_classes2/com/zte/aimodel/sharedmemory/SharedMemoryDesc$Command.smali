.class public final Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;
.super Ljava/lang/Object;
.source "SharedMemoryDesc.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;",
            ">;"
        }
    .end annotation
.end field

.field public static final burst:I = 0x2

.field public static final drain:I = 0x3

.field public static final flush:I = 0x6

.field public static final getStatus:I = 0x0

.field public static final pause:I = 0x5

.field public static final standby:I = 0x4

.field public static final start:I = 0x1


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 278
    new-instance v0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command$1;

    invoke-direct {v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command$1;-><init>()V

    sput-object v0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 151
    iput v0, p0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_tag:I

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput p1, p0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_tag:I

    .line 161
    iput-object p2, p0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-virtual {p0, p1}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .locals 3

    .line 394
    invoke-virtual {p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 395
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad access: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getTag()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_tagString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is available."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private _set(ILjava/lang/Object;)V
    .locals 0

    .line 413
    iput p1, p0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_tag:I

    .line 414
    iput-object p2, p0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_value:Ljava/lang/Object;

    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 409
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown field: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 407
    :pswitch_0
    const-string p0, "flush"

    return-object p0

    .line 406
    :pswitch_1
    const-string p0, "pause"

    return-object p0

    .line 405
    :pswitch_2
    const-string p0, "standby"

    return-object p0

    .line 404
    :pswitch_3
    const-string p0, "drain"

    return-object p0

    .line 403
    :pswitch_4
    const-string p0, "burst"

    return-object p0

    .line 402
    :pswitch_5
    const-string p0, "start"

    return-object p0

    .line 401
    :pswitch_6
    const-string p0, "getStatus"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static burst(I)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;
    .locals 2

    .line 206
    new-instance v0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    const/4 v1, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 387
    :cond_0
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 388
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    :cond_1
    return p0
.end method

.method public static drain(Lcom/zte/aimodel/sharedmemory/Void;)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;
    .locals 2

    .line 221
    new-instance v0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static flush(Lcom/zte/aimodel/sharedmemory/Void;)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;
    .locals 2

    .line 266
    new-instance v0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static getStatus(Lcom/zte/aimodel/sharedmemory/Void;)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;
    .locals 2

    .line 175
    new-instance v0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static pause(Lcom/zte/aimodel/sharedmemory/Void;)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;
    .locals 2

    .line 251
    new-instance v0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static standby(Lcom/zte/aimodel/sharedmemory/Void;)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;
    .locals 2

    .line 236
    new-instance v0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static start(Lcom/zte/aimodel/sharedmemory/Void;)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;
    .locals 2

    .line 190
    new-instance v0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 363
    invoke-virtual {p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getTag()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getFlush()Lcom/zte/aimodel/sharedmemory/Void;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->describeContents(Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getPause()Lcom/zte/aimodel/sharedmemory/Void;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->describeContents(Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    .line 374
    :cond_2
    invoke-virtual {p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getStandby()Lcom/zte/aimodel/sharedmemory/Void;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->describeContents(Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    .line 371
    :cond_3
    invoke-virtual {p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getDrain()Lcom/zte/aimodel/sharedmemory/Void;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->describeContents(Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    .line 368
    :cond_4
    invoke-virtual {p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getStart()Lcom/zte/aimodel/sharedmemory/Void;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->describeContents(Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    .line 365
    :cond_5
    invoke-virtual {p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getGetStatus()Lcom/zte/aimodel/sharedmemory/Void;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->describeContents(Ljava/lang/Object;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getBurst()I
    .locals 1

    const/4 v0, 0x2

    .line 210
    invoke-direct {p0, v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_assertTag(I)V

    .line 211
    iget-object p0, p0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getDrain()Lcom/zte/aimodel/sharedmemory/Void;
    .locals 1

    const/4 v0, 0x3

    .line 225
    invoke-direct {p0, v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_assertTag(I)V

    .line 226
    iget-object p0, p0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_value:Ljava/lang/Object;

    check-cast p0, Lcom/zte/aimodel/sharedmemory/Void;

    return-object p0
.end method

.method public getFlush()Lcom/zte/aimodel/sharedmemory/Void;
    .locals 1

    const/4 v0, 0x6

    .line 270
    invoke-direct {p0, v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_assertTag(I)V

    .line 271
    iget-object p0, p0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_value:Ljava/lang/Object;

    check-cast p0, Lcom/zte/aimodel/sharedmemory/Void;

    return-object p0
.end method

.method public getGetStatus()Lcom/zte/aimodel/sharedmemory/Void;
    .locals 1

    const/4 v0, 0x0

    .line 179
    invoke-direct {p0, v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_assertTag(I)V

    .line 180
    iget-object p0, p0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_value:Ljava/lang/Object;

    check-cast p0, Lcom/zte/aimodel/sharedmemory/Void;

    return-object p0
.end method

.method public getPause()Lcom/zte/aimodel/sharedmemory/Void;
    .locals 1

    const/4 v0, 0x5

    .line 255
    invoke-direct {p0, v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_assertTag(I)V

    .line 256
    iget-object p0, p0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_value:Ljava/lang/Object;

    check-cast p0, Lcom/zte/aimodel/sharedmemory/Void;

    return-object p0
.end method

.method public getStandby()Lcom/zte/aimodel/sharedmemory/Void;
    .locals 1

    const/4 v0, 0x4

    .line 240
    invoke-direct {p0, v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_assertTag(I)V

    .line 241
    iget-object p0, p0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_value:Ljava/lang/Object;

    check-cast p0, Lcom/zte/aimodel/sharedmemory/Void;

    return-object p0
.end method

.method public getStart()Lcom/zte/aimodel/sharedmemory/Void;
    .locals 1

    const/4 v0, 0x1

    .line 194
    invoke-direct {p0, v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_assertTag(I)V

    .line 195
    iget-object p0, p0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_value:Ljava/lang/Object;

    check-cast p0, Lcom/zte/aimodel/sharedmemory/Void;

    return-object p0
.end method

.method public getTag()I
    .locals 0

    .line 165
    iget p0, p0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_tag:I

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 357
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "union: unknown tag: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 353
    :pswitch_0
    sget-object v1, Lcom/zte/aimodel/sharedmemory/Void;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zte/aimodel/sharedmemory/Void;

    .line 354
    invoke-direct {p0, v0, p1}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_set(ILjava/lang/Object;)V

    return-void

    .line 348
    :pswitch_1
    sget-object v1, Lcom/zte/aimodel/sharedmemory/Void;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zte/aimodel/sharedmemory/Void;

    .line 349
    invoke-direct {p0, v0, p1}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_set(ILjava/lang/Object;)V

    return-void

    .line 343
    :pswitch_2
    sget-object v1, Lcom/zte/aimodel/sharedmemory/Void;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zte/aimodel/sharedmemory/Void;

    .line 344
    invoke-direct {p0, v0, p1}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_set(ILjava/lang/Object;)V

    return-void

    .line 338
    :pswitch_3
    sget-object v1, Lcom/zte/aimodel/sharedmemory/Void;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zte/aimodel/sharedmemory/Void;

    .line 339
    invoke-direct {p0, v0, p1}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_set(ILjava/lang/Object;)V

    return-void

    .line 333
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 334
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_set(ILjava/lang/Object;)V

    return-void

    .line 328
    :pswitch_5
    sget-object v1, Lcom/zte/aimodel/sharedmemory/Void;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zte/aimodel/sharedmemory/Void;

    .line 329
    invoke-direct {p0, v0, p1}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_set(ILjava/lang/Object;)V

    return-void

    .line 323
    :pswitch_6
    sget-object v1, Lcom/zte/aimodel/sharedmemory/Void;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zte/aimodel/sharedmemory/Void;

    .line 324
    invoke-direct {p0, v0, p1}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBurst(I)V
    .locals 1

    const/4 v0, 0x2

    .line 215
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setDrain(Lcom/zte/aimodel/sharedmemory/Void;)V
    .locals 1

    const/4 v0, 0x3

    .line 230
    invoke-direct {p0, v0, p1}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setFlush(Lcom/zte/aimodel/sharedmemory/Void;)V
    .locals 1

    const/4 v0, 0x6

    .line 275
    invoke-direct {p0, v0, p1}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setGetStatus(Lcom/zte/aimodel/sharedmemory/Void;)V
    .locals 1

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, v0, p1}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setPause(Lcom/zte/aimodel/sharedmemory/Void;)V
    .locals 1

    const/4 v0, 0x5

    .line 260
    invoke-direct {p0, v0, p1}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setStandby(Lcom/zte/aimodel/sharedmemory/Void;)V
    .locals 1

    const/4 v0, 0x4

    .line 245
    invoke-direct {p0, v0, p1}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setStart(Lcom/zte/aimodel/sharedmemory/Void;)V
    .locals 1

    const/4 v0, 0x1

    .line 199
    invoke-direct {p0, v0, p1}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 291
    iget v0, p0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget v0, p0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 312
    :pswitch_0
    invoke-virtual {p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getFlush()Lcom/zte/aimodel/sharedmemory/Void;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 309
    :pswitch_1
    invoke-virtual {p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getPause()Lcom/zte/aimodel/sharedmemory/Void;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 306
    :pswitch_2
    invoke-virtual {p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getStandby()Lcom/zte/aimodel/sharedmemory/Void;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 303
    :pswitch_3
    invoke-virtual {p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getDrain()Lcom/zte/aimodel/sharedmemory/Void;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 300
    :pswitch_4
    invoke-virtual {p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getBurst()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 297
    :pswitch_5
    invoke-virtual {p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getStart()Lcom/zte/aimodel/sharedmemory/Void;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 294
    :pswitch_6
    invoke-virtual {p0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getGetStatus()Lcom/zte/aimodel/sharedmemory/Void;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
