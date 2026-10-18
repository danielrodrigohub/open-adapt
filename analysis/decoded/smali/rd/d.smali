.class public abstract Lrd/d;
.super Ljava/lang/Object;
.source "CallableReference.java"

# interfaces
.implements Lwd/a;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrd/d$a;
    }
.end annotation


# static fields
.field public static final NO_RECEIVER:Ljava/lang/Object;


# instance fields
.field private final isTopLevel:Z

.field private final name:Ljava/lang/String;

.field private final owner:Ljava/lang/Class;

.field public final receiver:Ljava/lang/Object;

.field private transient reflected:Lwd/a;

.field private final signature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lrd/d$a;->h:Lrd/d$a;

    sput-object v0, Lrd/d;->NO_RECEIVER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lrd/d;->NO_RECEIVER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lrd/d;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 2
    invoke-direct/range {v0 .. v5}, Lrd/d;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lrd/d;->receiver:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lrd/d;->owner:Ljava/lang/Class;

    .line 6
    iput-object p3, p0, Lrd/d;->name:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lrd/d;->signature:Ljava/lang/String;

    .line 8
    iput-boolean p5, p0, Lrd/d;->isTopLevel:Z

    return-void
.end method


# virtual methods
.method public compute()Lwd/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lrd/d;->reflected:Lwd/a;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lrd/d;->computeReflected()Lwd/a;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lrd/d;->reflected:Lwd/a;

    :cond_0
    return-object v0
.end method

.method public abstract computeReflected()Lwd/a;
.end method

.method public getBoundReceiver()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lrd/d;->receiver:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lrd/d;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lwd/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lrd/d;->owner:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lrd/d;->isTopLevel:Z

    if-eqz v1, :cond_1

    .line 2
    sget-object v1, Lrd/x;->a:Lrd/y;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lrd/q;

    invoke-direct {v1, v0}, Lrd/q;-><init>(Ljava/lang/Class;)V

    move-object v0, v1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v0}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lrd/d;->signature:Ljava/lang/String;

    return-object v0
.end method
