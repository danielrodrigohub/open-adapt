.class public abstract Lga/a;
.super Ljava/lang/Object;
.source "AdaptKitGestureConfiguration.kt"

# interfaces
.implements Landroid/os/Parcelable;
.implements Leb/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lga/a$d;,
        Lga/a$c;,
        Lga/a$g;,
        Lga/a$b;,
        Lga/a$e;,
        Lga/a$f;,
        Lga/a$a;
    }
.end annotation


# static fields
.field public static final j:Lga/a$a;


# instance fields
.field public final h:Lga/a$e;

.field public final i:Lga/a$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lga/a$a;

    invoke-direct {v0}, Lga/a$a;-><init>()V

    sput-object v0, Lga/a;->j:Lga/a$a;

    return-void
.end method

.method public constructor <init>(Lga/a$e;Lga/a$f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lga/a;->h:Lga/a$e;

    .line 3
    iput-object p2, p0, Lga/a;->i:Lga/a$f;

    return-void
.end method


# virtual methods
.method public final m()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgd/q;->h:Lgd/q;

    return-object v0
.end method
