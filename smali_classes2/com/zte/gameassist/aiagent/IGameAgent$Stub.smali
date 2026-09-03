.class public abstract Lcom/zte/gameassist/aiagent/IGameAgent$Stub;
.super Landroid/os/Binder;
.source "IGameAgent.java"

# interfaces
.implements Lcom/zte/gameassist/aiagent/IGameAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/gameassist/aiagent/IGameAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/gameassist/aiagent/IGameAgent$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onWindowStateChanged:I = 0x3

.field static final TRANSACTION_registerCallback:I = 0x4

.field static final TRANSACTION_sendMessage:I = 0x1

.field static final TRANSACTION_sendTextMessage:I = 0x2

.field static final TRANSACTION_unregisterCallback:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "com.zte.gameassist.aiagent.IGameAgent"

    invoke-virtual {p0, p0, v0}, Lcom/zte/gameassist/aiagent/IGameAgent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/zte/gameassist/aiagent/IGameAgent;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_0
    const-string v0, "com.zte.gameassist.aiagent.IGameAgent"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    instance-of v1, v0, Lcom/zte/gameassist/aiagent/IGameAgent;

    if-eqz v1, :cond_1

    .line 63
    check-cast v0, Lcom/zte/gameassist/aiagent/IGameAgent;

    return-object v0

    .line 65
    :cond_1
    new-instance v0, Lcom/zte/gameassist/aiagent/IGameAgent$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/zte/gameassist/aiagent/IGameAgent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    const-string v0, "com.zte.gameassist.aiagent.IGameAgent"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 75
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 128
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/zte/gameassist/aiagent/IGameAssistClientCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;

    move-result-object p2

    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/zte/gameassist/aiagent/IGameAgent$Stub;->unregisterCallback(Ljava/lang/String;Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/zte/gameassist/aiagent/IGameAssistClientCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;

    move-result-object p2

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/zte/gameassist/aiagent/IGameAgent$Stub;->registerCallback(Ljava/lang/String;Lcom/zte/gameassist/aiagent/IGameAssistClientCallback;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 111
    invoke-virtual {p0, p1}, Lcom/zte/gameassist/aiagent/IGameAgent$Stub;->onWindowStateChanged(I)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 100
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/zte/gameassist/aiagent/IGameAgent$Stub;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 90
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/zte/gameassist/aiagent/IGameAgent$Stub;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    return v1

    .line 81
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
