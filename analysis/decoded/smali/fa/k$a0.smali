.class public abstract Lfa/k$a0;
.super Ljava/lang/Object;
.source "FirmwareUpdateState.kt"

# interfaces
.implements Lfa/k;
.implements Lfa/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfa/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a0"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfa/k$a0$c;,
        Lfa/k$a0$b;,
        Lfa/k$a0$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lfa/k;

    .line 2
    invoke-static {p0, p1}, Lfa/k$i;->a(Lfa/k;Lfa/k;)I

    move-result p1

    return p1
.end method

.method public final h()Lfa/k$c0;
    .locals 1

    sget-object v0, Lfa/k$c0;->o:Lfa/k$c0;

    return-object v0
.end method

.method public abstract m()F
.end method
