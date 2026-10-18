.class public final Lx2/b;
.super Ljava/lang/Object;
.source "UnitTransformation.java"

# interfaces
.implements Lp2/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp2/l<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final b:Lx2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp2/l<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx2/b;

    invoke-direct {v0}, Lx2/b;-><init>()V

    sput-object v0, Lx2/b;->b:Lx2/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 0

    return-void
.end method

.method public final b(Landroid/content/Context;Lr2/w;II)Lr2/w;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lr2/w<",
            "TT;>;II)",
            "Lr2/w<",
            "TT;>;"
        }
    .end annotation

    return-object p2
.end method
