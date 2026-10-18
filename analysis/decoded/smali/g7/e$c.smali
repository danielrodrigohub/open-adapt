.class public final Lg7/e$c;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lg7/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg7/e;->a(Ll7/a;)Lg7/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg7/q<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lg7/e$c;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Le7/m;

    iget-object v1, p0, Lg7/e$c;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Le7/m;-><init>(Ljava/lang/String;)V

    throw v0
.end method
