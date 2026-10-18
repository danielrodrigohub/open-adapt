.class public final Lrd/d$a;
.super Ljava/lang/Object;
.source "CallableReference.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrd/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final h:Lrd/d$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrd/d$a;

    invoke-direct {v0}, Lrd/d$a;-><init>()V

    sput-object v0, Lrd/d$a;->h:Lrd/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
