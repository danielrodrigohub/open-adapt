.class public final Lhc/q0$a;
.super Landroid/content/BroadcastReceiver;
.source "TransportScatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhc/q0;-><init>(Lhc/e;Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lhc/q0;


# direct methods
.method public constructor <init>(Lhc/q0;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lhc/q0$a;->b:Lhc/q0;

    iput-object p2, p0, Lhc/q0$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p1, "com.nike.corerf.DEVICE_ID"

    .line 1
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p0, Lhc/q0$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.nike.corerf.ACTION_RIPLEY_TRANSPORT_WINDOW_MOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lhc/q0$a;->b:Lhc/q0;

    const-string v0, "com.nike.corerf.EXTRA_DATA"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p1, Lhc/q0;->i:I

    .line 5
    iget-object p1, p0, Lhc/q0$a;->b:Lhc/q0;

    iget-object p1, p1, Lhc/q0;->h:Ljava/lang/Object;

    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p2, p0, Lhc/q0$a;->b:Lhc/q0;

    iget-object p2, p2, Lhc/q0;->h:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_2
    :goto_0
    return-void
.end method
